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
 scalar_t__ GS_LEVEL ; 
 int /*<<< orphan*/  M_QuickSaveResponse ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* QSPROMPT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SaveDef ; 
 scalar_t__ gamestate ; 
 size_t quickSaveSlot ; 
 int /*<<< orphan*/ * savegamestrings ; 
 int /*<<< orphan*/  sfx_oof ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tempstring ; 
 int /*<<< orphan*/  usergame ; 

void FUNC6(void)
{
    if (!usergame)
    {
	FUNC4(NULL,sfx_oof);
	return;
    }

    if (gamestate != GS_LEVEL)
	return;
	
    if (quickSaveSlot < 0)
    {
	FUNC2();
	FUNC0();
	FUNC1(&SaveDef);
	quickSaveSlot = -2;	// means to pick a slot now
	return;
    }
    FUNC5(tempstring,QSPROMPT,savegamestrings[quickSaveSlot]);
    FUNC3(tempstring,M_QuickSaveResponse,true);
}