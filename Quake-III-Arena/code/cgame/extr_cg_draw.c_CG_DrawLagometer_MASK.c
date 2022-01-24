#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  integer; } ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_7__ {int /*<<< orphan*/  whiteShader; int /*<<< orphan*/  lagometerShader; } ;
struct TYPE_9__ {TYPE_1__ media; scalar_t__ localServer; } ;
struct TYPE_8__ {int frameCount; float* frameSamples; int snapshotCount; float* snapshotSamples; int* snapshotFlags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC1 (float,float,char*,double) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  COLOR_BLUE ; 
 int /*<<< orphan*/  COLOR_GREEN ; 
 int /*<<< orphan*/  COLOR_RED ; 
 int /*<<< orphan*/  COLOR_YELLOW ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int LAG_SAMPLES ; 
 float MAX_LAGOMETER_PING ; 
 float MAX_LAGOMETER_RANGE ; 
 int SNAPFLAG_RATE_DELAYED ; 
 TYPE_6__ cg_lagometer ; 
 TYPE_5__ cg_nopredict ; 
 TYPE_4__ cg_synchronousClients ; 
 TYPE_3__ cgs ; 
 int /*<<< orphan*/ ** g_color_table ; 
 TYPE_2__ lagometer ; 
 int /*<<< orphan*/  FUNC5 (float,float,int,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7( void ) {
	int		a, x, y, i;
	float	v;
	float	ax, ay, aw, ah, mid, range;
	int		color;
	float	vscale;

	if ( !cg_lagometer.integer || cgs.localServer ) {
		FUNC2();
		return;
	}

	//
	// draw the graph
	//
#ifdef MISSIONPACK
	x = 640 - 48;
	y = 480 - 144;
#else
	x = 640 - 48;
	y = 480 - 48;
#endif

	FUNC6( NULL );
	FUNC3( x, y, 48, 48, cgs.media.lagometerShader );

	ax = x;
	ay = y;
	aw = 48;
	ah = 48;
	FUNC0( &ax, &ay, &aw, &ah );

	color = -1;
	range = ah / 3;
	mid = ay + range;

	vscale = range / MAX_LAGOMETER_RANGE;

	// draw the frame interpoalte / extrapolate graph
	for ( a = 0 ; a < aw ; a++ ) {
		i = ( lagometer.frameCount - 1 - a ) & (LAG_SAMPLES - 1);
		v = lagometer.frameSamples[i];
		v *= vscale;
		if ( v > 0 ) {
			if ( color != 1 ) {
				color = 1;
				FUNC6( g_color_table[FUNC4(COLOR_YELLOW)] );
			}
			if ( v > range ) {
				v = range;
			}
			FUNC5 ( ax + aw - a, mid - v, 1, v, 0, 0, 0, 0, cgs.media.whiteShader );
		} else if ( v < 0 ) {
			if ( color != 2 ) {
				color = 2;
				FUNC6( g_color_table[FUNC4(COLOR_BLUE)] );
			}
			v = -v;
			if ( v > range ) {
				v = range;
			}
			FUNC5( ax + aw - a, mid, 1, v, 0, 0, 0, 0, cgs.media.whiteShader );
		}
	}

	// draw the snapshot latency / drop graph
	range = ah / 2;
	vscale = range / MAX_LAGOMETER_PING;

	for ( a = 0 ; a < aw ; a++ ) {
		i = ( lagometer.snapshotCount - 1 - a ) & (LAG_SAMPLES - 1);
		v = lagometer.snapshotSamples[i];
		if ( v > 0 ) {
			if ( lagometer.snapshotFlags[i] & SNAPFLAG_RATE_DELAYED ) {
				if ( color != 5 ) {
					color = 5;	// YELLOW for rate delay
					FUNC6( g_color_table[FUNC4(COLOR_YELLOW)] );
				}
			} else {
				if ( color != 3 ) {
					color = 3;
					FUNC6( g_color_table[FUNC4(COLOR_GREEN)] );
				}
			}
			v = v * vscale;
			if ( v > range ) {
				v = range;
			}
			FUNC5( ax + aw - a, ay + ah - v, 1, v, 0, 0, 0, 0, cgs.media.whiteShader );
		} else if ( v < 0 ) {
			if ( color != 4 ) {
				color = 4;		// RED for dropped snapshots
				FUNC6( g_color_table[FUNC4(COLOR_RED)] );
			}
			FUNC5( ax + aw - a, ay + ah - range, 1, range, 0, 0, 0, 0, cgs.media.whiteShader );
		}
	}

	FUNC6( NULL );

	if ( cg_nopredict.integer || cg_synchronousClients.integer ) {
		FUNC1( ax, ay, "snc", 1.0 );
	}

	FUNC2();
}