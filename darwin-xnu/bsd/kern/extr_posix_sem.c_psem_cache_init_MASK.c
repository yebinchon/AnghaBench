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
 int /*<<< orphan*/  M_SHM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int posix_sem_max ; 
 int /*<<< orphan*/  psemhash ; 
 int /*<<< orphan*/  psemhashtbl ; 

void
FUNC1(void)
{
	psemhashtbl = FUNC0(posix_sem_max / 2, M_SHM, &psemhash);
}