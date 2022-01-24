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
struct __semwait_signal_nocancel_args {int dummy; } ;
struct __semwait_signal_args {int dummy; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct __semwait_signal_nocancel_args*,int /*<<< orphan*/ *) ; 

int
FUNC2(proc_t p, struct __semwait_signal_args *uap,
                     int32_t *retval)
{
	FUNC0(0);
	return(FUNC1(p, (struct __semwait_signal_nocancel_args *)uap, retval));
}