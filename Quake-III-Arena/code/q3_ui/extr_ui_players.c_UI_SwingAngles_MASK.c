#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
struct TYPE_2__ {float frametime; } ;

/* Variables and functions */
 float FUNC0 (float) ; 
 float FUNC1 (float,float) ; 
 float FUNC2 (float) ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 TYPE_1__ uis ; 

__attribute__((used)) static void FUNC3( float destination, float swingTolerance, float clampTolerance,
					float speed, float *angle, qboolean *swinging ) {
	float	swing;
	float	move;
	float	scale;

	if ( !*swinging ) {
		// see if a swing should be started
		swing = FUNC1( *angle, destination );
		if ( swing > swingTolerance || swing < -swingTolerance ) {
			*swinging = qtrue;
		}
	}

	if ( !*swinging ) {
		return;
	}
	
	// modify the speed depending on the delta
	// so it doesn't seem so linear
	swing = FUNC1( destination, *angle );
	scale = FUNC2( swing );
	if ( scale < swingTolerance * 0.5 ) {
		scale = 0.5;
	} else if ( scale < swingTolerance ) {
		scale = 1.0;
	} else {
		scale = 2.0;
	}

	// swing towards the destination angle
	if ( swing >= 0 ) {
		move = uis.frametime * scale * speed;
		if ( move >= swing ) {
			move = swing;
			*swinging = qfalse;
		}
		*angle = FUNC0( *angle + move );
	} else if ( swing < 0 ) {
		move = uis.frametime * scale * -speed;
		if ( move <= swing ) {
			move = swing;
			*swinging = qfalse;
		}
		*angle = FUNC0( *angle + move );
	}

	// clamp to no more than tolerance
	swing = FUNC1( destination, *angle );
	if ( swing > clampTolerance ) {
		*angle = FUNC0( destination - (clampTolerance - 1) );
	} else if ( swing < -clampTolerance ) {
		*angle = FUNC0( destination + (clampTolerance - 1) );
	}
}