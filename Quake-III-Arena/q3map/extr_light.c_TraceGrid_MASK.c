#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
typedef  int /*<<< orphan*/  traceWork_t ;
struct TYPE_5__ {int /*<<< orphan*/  origin; struct TYPE_5__* next; } ;
typedef  TYPE_1__ light_t ;
struct TYPE_6__ {scalar_t__* color; scalar_t__* dir; } ;
typedef  TYPE_2__ contribution_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*) ; 
 float FUNC1 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int MAX_CONTRIBUTIONS ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,scalar_t__*) ; 
 float FUNC8 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,double,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 scalar_t__* ambientColor ; 
 int* gridBounds ; 
 scalar_t__* gridData ; 
 scalar_t__* gridMins ; 
 int* gridSize ; 
 TYPE_1__* lights ; 
 scalar_t__* sunDirection ; 

void FUNC12( int num ) {
	int			x, y, z;
	vec3_t		origin;
	light_t		*light;
	vec3_t		color;
	int			mod;
	vec3_t		directedColor;
	vec3_t		summedDir;
	contribution_t	contributions[MAX_CONTRIBUTIONS];
	int			numCon;
	int			i;
	traceWork_t	tw;
	float		addSize;

	mod = num;
	z = mod / ( gridBounds[0] * gridBounds[1] );
	mod -= z * ( gridBounds[0] * gridBounds[1] );

	y = mod / gridBounds[0];
	mod -= y * gridBounds[0];

	x = mod;

	origin[0] = gridMins[0] + x * gridSize[0];
	origin[1] = gridMins[1] + y * gridSize[1];
	origin[2] = gridMins[2] + z * gridSize[2];

	if ( FUNC4( origin ) ) {
		vec3_t	baseOrigin;
		int		step;

		FUNC7( origin, baseOrigin );

		// try to nudge the origin around to find a valid point
		for ( step = 9 ; step <= 18 ; step += 9 ) {
			for ( i = 0 ; i < 8 ; i++ ) {
				FUNC7( baseOrigin, origin );
				if ( i & 1 ) {
					origin[0] += step;
				} else {
					origin[0] -= step;
				}
				if ( i & 2 ) {
					origin[1] += step;
				} else {
					origin[1] -= step;
				}
				if ( i & 4 ) {
					origin[2] += step;
				} else {
					origin[2] -= step;
				}

				if ( !FUNC4( origin ) ) {
					break;
				}
			}
			if ( i != 8 ) {
				break;
			}
		}
		if ( step > 18 ) {
			// can't find a valid point at all
			for ( i = 0 ; i < 8 ; i++ ) {
				gridData[ num*8 + i ] = 0;
			}
			return;
		}
	}

	FUNC6( summedDir );

	// trace to all the lights

	// find the major light direction, and divide the
	// total light between that along the direction and
	// the remaining in the ambient 
	numCon = 0;
	for ( light = lights ; light ; light = light->next ) {
		vec3_t		add;
		vec3_t		dir;
		float		addSize;

		if ( !FUNC2( light, origin, add, &tw ) ) {
			continue;
		}

		FUNC11( light->origin, origin, dir );
		FUNC10( dir, dir );

		FUNC7( add, contributions[numCon].color );
		FUNC7( dir, contributions[numCon].dir );
		numCon++;

		addSize = FUNC8( add );
		FUNC9( summedDir, addSize, dir, summedDir );

		if ( numCon == MAX_CONTRIBUTIONS-1 ) {
			break;
		}
	}

	//
	// trace directly to the sun
	//
	FUNC5( origin, &tw, color );
	addSize = FUNC8( color );
	if ( addSize > 0 ) {
		FUNC7( color, contributions[numCon].color );
		FUNC7( sunDirection, contributions[numCon].dir );
		FUNC9( summedDir, addSize, sunDirection, summedDir );
		numCon++;
	}


	// now that we have identified the primary light direction,
	// go back and seperate all the light into directed and ambient
	FUNC10( summedDir, summedDir );
	FUNC7( ambientColor, color );
	FUNC6( directedColor );

	for ( i = 0 ; i < numCon ; i++ ) {
		float	d;

		d = FUNC1( contributions[i].dir, summedDir );
		if ( d < 0 ) {
			d = 0;
		}

		FUNC9( directedColor, d, contributions[i].color, directedColor );

		// the ambient light will be at 1/4 the value of directed light
		d = 0.25 * ( 1.0 - d );
		FUNC9( color, d, contributions[i].color, color );
	}

	// now do some fudging to keep the ambient from being too low
	FUNC9( color, 0.25, directedColor, color );

	//
	// save the resulting value out
	//
	FUNC0( color, gridData + num*8 );
	FUNC0( directedColor, gridData + num*8 + 3 );

	FUNC10( summedDir, summedDir );
	FUNC3( summedDir, gridData + num*8 + 6);
}