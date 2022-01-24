#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  scalar_t__ thread_t ;
typedef  scalar_t__ thread_qos_t ;
typedef  int /*<<< orphan*/  pthread_priority_t ;
typedef  TYPE_1__* proc_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
struct TYPE_3__ {int /*<<< orphan*/  task; } ;

/* Variables and functions */
 int EINVAL ; 
 int ESRCH ; 
 scalar_t__ THREAD_NULL ; 
 int /*<<< orphan*/  THREAD_QOS_OVERRIDE_TYPE_PTHREAD_EXPLICIT_OVERRIDE ; 
 scalar_t__ THREAD_QOS_UNSPECIFIED ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int
FUNC4(proc_t p, mach_port_name_t kport,
		pthread_priority_t pp, user_addr_t resource)
{
	thread_qos_t qos = FUNC0(pp);
	if (qos == THREAD_QOS_UNSPECIFIED) {
		return EINVAL;
	}

	thread_t th = FUNC1(kport);
	if (th == THREAD_NULL) {
		return ESRCH;
	}

	int rv = FUNC2(p->task, th, 0, qos, TRUE,
			resource, THREAD_QOS_OVERRIDE_TYPE_PTHREAD_EXPLICIT_OVERRIDE);

	FUNC3(th);
	return rv;
}