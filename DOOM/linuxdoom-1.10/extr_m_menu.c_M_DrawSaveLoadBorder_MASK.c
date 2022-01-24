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
 int /*<<< orphan*/  PU_CACHE ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

void FUNC2(int x,int y)
{
    int             i;
	
    FUNC0 (x-8,y+7,0,FUNC1("M_LSLEFT",PU_CACHE));
	
    for (i = 0;i < 24;i++)
    {
	FUNC0 (x,y+7,0,FUNC1("M_LSCNTR",PU_CACHE));
	x += 8;
    }

    FUNC0 (x,y+7,0,FUNC1("M_LSRGHT",PU_CACHE));
}