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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 scalar_t__ PROC_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 

void
FUNC4(pid_t pgid, int sig)
{ 
	proc_t p = PROC_NULL;

	if (pgid < 0) 
		FUNC0(-(pgid), sig);

	else if (pgid > 0 && (p = FUNC1(pgid)) != 0) 
		FUNC3(p, sig);
	if (p != PROC_NULL)
		FUNC2(p);
}