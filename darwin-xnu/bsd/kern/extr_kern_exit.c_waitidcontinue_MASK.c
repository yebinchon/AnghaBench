#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  struct uthread* uthread_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct waitid_nocancel_args {int dummy; } ;
struct _waitid_data {int* retval; struct waitid_nocancel_args* args; } ;
struct TYPE_2__ {struct _waitid_data uus_waitid_data; } ;
struct uthread {TYPE_1__ uu_save; } ;
typedef  int /*<<< orphan*/  proc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct waitid_nocancel_args*,int*) ; 

int
FUNC4(int result)
{
	proc_t p;
	thread_t thread;
	uthread_t uth;
	struct _waitid_data *waitid_data;
	struct waitid_nocancel_args *uap;
	int *retval;

	if (result)
		return (result);

	p = FUNC0();
	thread = FUNC1();
	uth = (struct uthread *)FUNC2(thread);

	waitid_data = &uth->uu_save.uus_waitid_data;
	uap = waitid_data->args;
	retval = waitid_data->retval;
	return(FUNC3(p, uap, retval));
}