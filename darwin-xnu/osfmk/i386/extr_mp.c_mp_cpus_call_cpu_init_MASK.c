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
typedef  int /*<<< orphan*/  mp_call_t ;
struct TYPE_3__ {int /*<<< orphan*/  queue; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ mp_call_queue_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int MP_CPUS_CALL_BUFS_PER_CPU ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* mp_cpus_call_head ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC5(int cpu)
{
	int		i;
	mp_call_queue_t	*cqp = &mp_cpus_call_head[cpu];
	mp_call_t	*callp;

	FUNC4(&cqp->lock, 0);
	FUNC3(&cqp->queue);
	for (i = 0; i < MP_CPUS_CALL_BUFS_PER_CPU; i++) {
		callp = (mp_call_t *) FUNC1(sizeof(mp_call_t));
		FUNC2(callp);
	}

	FUNC0("mp_cpus_call_init(%d) done\n", cpu);
}