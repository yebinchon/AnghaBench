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
struct TYPE_2__ {scalar_t__* plane; int /*<<< orphan*/  signbits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC1 (float*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (float*,scalar_t__*) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int MAX_PATCH_PLANES ; 
 float PLANE_TRI_EPSILON ; 
 int /*<<< orphan*/  FUNC4 (float*,scalar_t__*) ; 
 int numPlanes ; 
 TYPE_1__* planes ; 

__attribute__((used)) static int FUNC5( float *p1, float *p2, float *p3 ) {
	float	plane[4];
	int		i;
	float	d;

	if ( !FUNC0( plane, p1, p2, p3 ) ) {
		return -1;
	}

	// see if the points are close enough to an existing plane
	for ( i = 0 ; i < numPlanes ; i++ ) {
		if ( FUNC3( plane, planes[i].plane ) < 0 ) {
			continue;	// allow backwards planes?
		}

		d = FUNC3( p1, planes[i].plane ) - planes[i].plane[3];
		if ( d < -PLANE_TRI_EPSILON || d > PLANE_TRI_EPSILON ) {
			continue;
		}

		d = FUNC3( p2, planes[i].plane ) - planes[i].plane[3];
		if ( d < -PLANE_TRI_EPSILON || d > PLANE_TRI_EPSILON ) {
			continue;
		}

		d = FUNC3( p3, planes[i].plane ) - planes[i].plane[3];
		if ( d < -PLANE_TRI_EPSILON || d > PLANE_TRI_EPSILON ) {
			continue;
		}

		// found it
		return i;
	}

	// add a new plane
	if ( numPlanes == MAX_PATCH_PLANES ) {
		FUNC2( ERR_DROP, "MAX_PATCH_PLANES" );
	}

	FUNC4( plane, planes[numPlanes].plane );
	planes[numPlanes].signbits = FUNC1( plane );

	numPlanes++;

	return numPlanes-1;
}