#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 float FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  TraceGrid ; 
 int /*<<< orphan*/  TraceLtm ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ambientColor ; 
 int /*<<< orphan*/  c_occluded ; 
 int /*<<< orphan*/  c_visible ; 
 int /*<<< orphan*/ * entities ; 
 int /*<<< orphan*/ * gridBounds ; 
 int /*<<< orphan*/  nogridlighting ; 
 int /*<<< orphan*/  numAreaLights ; 
 int /*<<< orphan*/  numDrawSurfaces ; 
 int /*<<< orphan*/  numGridPoints ; 
 int /*<<< orphan*/  numPointLights ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC7 (void) {
	float		f;

	// determine the number of grid points
	FUNC4();

	// find the optional world ambient
	FUNC2( &entities[0], "_color", ambientColor );
	f = FUNC1( &entities[0], "ambient" );
	FUNC5( ambientColor, f, ambientColor );

	// create lights out of patches and lights
	FUNC6 ("--- CreateLights ---\n");
	FUNC0 ();
	FUNC6 ("%i point lights\n", numPointLights);
	FUNC6 ("%i area lights\n", numAreaLights);

	if (!nogridlighting) {
		FUNC6 ("--- TraceGrid ---\n");
		FUNC3( numGridPoints, qtrue, TraceGrid );
		FUNC6( "%i x %i x %i = %i grid\n", gridBounds[0], gridBounds[1],
			gridBounds[2], numGridPoints);
	}

	FUNC6 ("--- TraceLtm ---\n");
	FUNC3( numDrawSurfaces, qtrue, TraceLtm );
	FUNC6( "%5i visible samples\n", c_visible );
	FUNC6( "%5i occluded samples\n", c_occluded );
}