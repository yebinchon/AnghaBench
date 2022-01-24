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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SAVEDEAD ; 
 int /*<<< orphan*/  SaveDef ; 
 scalar_t__ gamestate ; 
 int /*<<< orphan*/  usergame ; 

void FUNC3 (int choice)
{
    if (!usergame)
    {
	FUNC2(SAVEDEAD,NULL,false);
	return;
    }
	
    if (gamestate != GS_LEVEL)
	return;
	
    FUNC1(&SaveDef);
    FUNC0();
}