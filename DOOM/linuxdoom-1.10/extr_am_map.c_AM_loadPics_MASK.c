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
 int /*<<< orphan*/  PU_STATIC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * marknums ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

void FUNC2(void)
{
    int i;
    char namebuf[9];
  
    for (i=0;i<10;i++)
    {
	FUNC1(namebuf, "AMMNUM%d", i);
	marknums[i] = FUNC0(namebuf, PU_STATIC);
    }

}