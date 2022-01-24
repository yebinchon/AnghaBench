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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ commercial ; 
 scalar_t__ gamemode ; 
 int gametic ; 
 int /*<<< orphan*/  netgame ; 
 int /*<<< orphan*/ * quitsounds ; 
 int /*<<< orphan*/ * quitsounds2 ; 

void FUNC3(int ch)
{
    if (ch != 'y')
	return;
    if (!netgame)
    {
	if (gamemode == commercial)
	    FUNC2(NULL,quitsounds2[(gametic>>2)&7]);
	else
	    FUNC2(NULL,quitsounds[(gametic>>2)&7]);
	FUNC1(105);
    }
    FUNC0 ();
}