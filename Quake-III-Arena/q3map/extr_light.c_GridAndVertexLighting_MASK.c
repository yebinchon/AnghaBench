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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  TraceGrid ; 
 int /*<<< orphan*/  TriSoupLightingThread ; 
 int /*<<< orphan*/  VertexLightingThread ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  nogridlighting ; 
 int /*<<< orphan*/  novertexlighting ; 
 int /*<<< orphan*/  numDrawSurfaces ; 
 int /*<<< orphan*/  numGridPoints ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC8(void) {
	FUNC6();

	FUNC3();
	FUNC1();
	FUNC4();
	FUNC0 ();
	FUNC2();

	if (!nogridlighting) {
		FUNC7 ("--- TraceGrid ---\n");
		FUNC5( numGridPoints, qtrue, TraceGrid );
	}

	if (!novertexlighting) {
		FUNC7 ("--- Vertex Lighting ---\n");
		FUNC5( numDrawSurfaces, qtrue, VertexLightingThread );
	}

	FUNC7("--- Model Lighting ---\n");
	FUNC5( numDrawSurfaces, qtrue, TriSoupLightingThread );
}