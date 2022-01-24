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
struct proc {int dummy; } ;
struct peeloff_args {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

int
FUNC1(struct proc *p, struct peeloff_args *uap, int *retval)
{
#pragma unused(p, uap, retval)
	/*
	 * Due to similiarity with a POSIX interface, define as
	 * an unofficial cancellation point.
	 */
	FUNC0(1);
	return (0);
}