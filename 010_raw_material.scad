function i2u(i,o16) = i * 100 + o16 * 100 / 16;

module icube(w1,w2,d1,d2,h1,h2){
	color([150/255, 111/255, 51/255, 0.5])
	cube([i2u(w1,w2),
			i2u(d1,d2),
			i2u(h1,h2)]);
}

module smallThinBoard(){
	icube(12,8,
			9,3,
			0,12);
}


module medThinBoard(){
	icube(16,14,
			11,5,
			0,12);
}


module largeThinBoard(){
	icube(17,0,
			11,5,
			0,12);
}


module rawLeg(){
	icube(28,0,
			1,11,
			1,11);
}


module rawLongBoard(){
	icube(48,0,
			3,8,
			1,8);
}


smallThinBoard();
translate([0,2000,0]) medThinBoard();
translate([0,4000,0]) largeThinBoard();
translate([0,6000,0]) rawLeg();
translate([0,7000,0]) rawLeg();
translate([0,7500,0]) rawLongBoard();
translate([0,8000,0]) rawLongBoard();



