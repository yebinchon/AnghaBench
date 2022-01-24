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
struct sysdoproc_args {scalar_t__ buflen; scalar_t__ sizeof_kproc; scalar_t__ ruidcheck; scalar_t__ uidcheck; scalar_t__ ttycheck; int* errorp; int /*<<< orphan*/  needed; int /*<<< orphan*/  dp; int /*<<< orphan*/  kprocp; scalar_t__ is_64_bit; int /*<<< orphan*/  uidval; } ;
typedef  int /*<<< orphan*/  proc_t ;

/* Variables and functions */
 int PROC_RETURNED ; 
 int PROC_RETURNED_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC7(proc_t p, void *arg)
{
	struct sysdoproc_args *args = arg;

	if (args->buflen >= args->sizeof_kproc) {
		if ((args->ruidcheck != 0) && (FUNC4(p, &args->uidval) == 0))
			return (PROC_RETURNED);
		if ((args->uidcheck != 0) && (FUNC6(p, &args->uidval) == 0))
			return (PROC_RETURNED);
		if ((args->ttycheck != 0) && (FUNC5(p, &args->uidval) == 0))
			return (PROC_RETURNED);

		FUNC0(args->kprocp, args->sizeof_kproc);
		if (args->is_64_bit)
			FUNC3(p, args->kprocp);
		else
			FUNC2(p, args->kprocp);
		int error = FUNC1(args->kprocp, args->dp, args->sizeof_kproc);
		if (error) {
			*args->errorp = error;
			return (PROC_RETURNED_DONE);
		}
		args->dp += args->sizeof_kproc;
		args->buflen -= args->sizeof_kproc;
	}
	args->needed += args->sizeof_kproc;
	return (PROC_RETURNED);
}