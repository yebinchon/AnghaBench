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
typedef  scalar_t__ proc_t ;

/* Variables and functions */
 scalar_t__ PROC_NULL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

proc_t
FUNC4(int pid, int locked)
{
	proc_t p = PROC_NULL;

	if (locked == 0) {
		FUNC1();
	}

	p = FUNC0(pid);
	if ((p == PROC_NULL) || (p != FUNC3(p)))
		p = PROC_NULL;

	if (locked == 0) {
		FUNC2();
	}

	return(p);
}