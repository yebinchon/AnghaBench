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
 int /*<<< orphan*/  FUNC0 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  M_VerifyNightmare ; 
 int /*<<< orphan*/  NIGHTMARE ; 
 scalar_t__ epi ; 
 int nightmare ; 

void FUNC3(int choice)
{
    if (choice == nightmare)
    {
	FUNC2(NIGHTMARE,M_VerifyNightmare,true);
	return;
    }
	
    FUNC0(choice,epi+1,1);
    FUNC1 ();
}