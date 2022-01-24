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
 int /*<<< orphan*/  EpiDef ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  NEWGAME ; 
 int /*<<< orphan*/  NewDef ; 
 scalar_t__ commercial ; 
 int /*<<< orphan*/  demoplayback ; 
 scalar_t__ gamemode ; 
 scalar_t__ netgame ; 

void FUNC2(int choice)
{
    if (netgame && !demoplayback)
    {
	FUNC1(NEWGAME,NULL,false);
	return;
    }
	
    if ( gamemode == commercial )
	FUNC0(&NewDef);
    else
	FUNC0(&EpiDef);
}