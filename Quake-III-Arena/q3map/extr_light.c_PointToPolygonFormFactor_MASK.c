#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int numpoints; int /*<<< orphan*/ ** p; } ;
typedef  TYPE_1__ winding_t ;
typedef  int /*<<< orphan*/ * vec3_t ;
typedef  scalar_t__ qboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 float FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *) ; 
 int MAX_POINTS_ON_WINDING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 double FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC6 (float) ; 
 scalar_t__ qtrue ; 

float	FUNC7( const vec3_t point, const vec3_t normal, const winding_t *w ) {
	vec3_t		triVector, triNormal;
	int			i, j;
	vec3_t		dirs[MAX_POINTS_ON_WINDING];
	float		total;
	float		dot, angle, facing;

	for ( i = 0 ; i < w->numpoints ; i++ ) {
		FUNC4( w->p[i], point, dirs[i] );
		FUNC3( dirs[i], dirs[i] );
	}

	// duplicate first vertex to avoid mod operation
	FUNC2( dirs[0], dirs[i] );

	total = 0;
	for ( i = 0 ; i < w->numpoints ; i++ ) {
		j = i+1;
		dot = FUNC1( dirs[i], dirs[j] );

		// roundoff can cause slight creep, which gives an IND from acos
		if ( dot > 1.0 ) {
			dot = 1.0;
		} else if ( dot < -1.0 ) {
			dot = -1.0;
		}
		
		angle = FUNC6( dot );
		FUNC0( dirs[i], dirs[j], triVector );
		if ( FUNC3( triVector, triNormal ) < 0.0001 ) {
			continue;
		}
		facing = FUNC1( normal, triNormal );
		total += facing * angle;

		if ( total > 6.3 || total < -6.3 ) {
			static qboolean printed;

			if ( !printed ) {
				printed = qtrue;
				FUNC5( "WARNING: bad PointToPolygonFormFactor: %f at %1.1f %1.1f %1.1f from %1.1f %1.1f %1.1f\n", total,
					w->p[i][0], w->p[i][1], w->p[i][2], point[0], point[1], point[2]);
			}
			return 0;
		}

	}

	total /= 2*3.141592657;		// now in the range of 0 to 1 over the entire incoming hemisphere

	return total;
}