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
typedef  int /*<<< orphan*/  id_t ;

/* Variables and functions */
 int /*<<< orphan*/  MACH_PORT_NULL ; 
 int PRIO_DARWIN_THREAD ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(int which, id_t who, int prio)
{
	int rv = FUNC0(which, who, prio);
	if (which == PRIO_DARWIN_THREAD && rv == -2) {
		FUNC1(MACH_PORT_NULL);
		rv = 0;
	}

	return rv;
}