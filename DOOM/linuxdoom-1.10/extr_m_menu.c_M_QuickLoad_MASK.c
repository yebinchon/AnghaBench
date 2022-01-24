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
 int /*<<< orphan*/ * M_QuickLoadResponse ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  QLOADNET ; 
 char* QLPROMPT ; 
 int /*<<< orphan*/  QSAVESPOT ; 
 scalar_t__ netgame ; 
 size_t quickSaveSlot ; 
 int /*<<< orphan*/ * savegamestrings ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tempstring ; 

void FUNC2(void)
{
    if (netgame)
    {
	FUNC0(QLOADNET,NULL,false);
	return;
    }
	
    if (quickSaveSlot < 0)
    {
	FUNC0(QSAVESPOT,NULL,false);
	return;
    }
    FUNC1(tempstring,QLPROMPT,savegamestrings[quickSaveSlot]);
    FUNC0(tempstring,M_QuickLoadResponse,true);
}