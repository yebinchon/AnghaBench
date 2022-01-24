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
struct kqueue_workloop_params {int kqwlp_version; int /*<<< orphan*/  kqwlp_id; } ;
struct kqueue_workloop_ctl_args {int sz; int /*<<< orphan*/  options; int /*<<< orphan*/  cmd; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  params ;

/* Variables and functions */
 int EINVAL ; 
 size_t FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct kqueue_workloop_params*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kqueue_workloop_params*,int*) ; 

int
FUNC3(proc_t p, struct kqueue_workloop_ctl_args *uap, int *retval)
{
	struct kqueue_workloop_params params = {
		.kqwlp_id = 0,
	};
	if (uap->sz < sizeof(params.kqwlp_version)) {
		return EINVAL;
	}

	size_t copyin_sz = FUNC0(sizeof(params), uap->sz);
	int rv = FUNC1(uap->addr, &params, copyin_sz);
	if (rv) {
		return rv;
	}

	if (params.kqwlp_version != (int)uap->sz) {
		return EINVAL;
	}

	return FUNC2(p, uap->cmd, uap->options, &params,
			retval);
}