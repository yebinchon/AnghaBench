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
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  detailLevel ; 
 scalar_t__ framecount ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  screenblocks ; 

void FUNC9 (void)
{
    FUNC0 ();
    FUNC8 ("\nR_InitData");
    FUNC3 ();
    FUNC8 ("\nR_InitPointToAngle");
    FUNC5 ();
    // viewwidth / viewheight / detailLevel are set by the defaults
    FUNC8 ("\nR_InitTables");

    FUNC7 (screenblocks, detailLevel);
    FUNC2 ();
    FUNC8 ("\nR_InitPlanes");
    FUNC1 ();
    FUNC8 ("\nR_InitLightTables");
    FUNC4 ();
    FUNC8 ("\nR_InitSkyMap");
    FUNC6 ();
    FUNC8 ("\nR_InitTranslationsTables");
	
    framecount = 0;
}