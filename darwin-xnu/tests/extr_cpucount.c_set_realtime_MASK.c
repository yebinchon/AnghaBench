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
typedef  void* uint32_t ;
struct TYPE_2__ {scalar_t__ preemptible; void* computation; void* constraint; void* period; } ;
typedef  TYPE_1__ thread_time_constraint_policy_data_t ;
typedef  int /*<<< orphan*/  thread_policy_t ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  mach_port_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  THREAD_TIME_CONSTRAINT_POLICY ; 
 int /*<<< orphan*/  THREAD_TIME_CONSTRAINT_POLICY_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(pthread_t thread) {
	kern_return_t kr;
	thread_time_constraint_policy_data_t pol;

	mach_port_t target_thread = FUNC3(thread);
	T_QUIET; FUNC1(target_thread, "pthread_mach_thread_np");

	/* 1s 100ms 10ms */
	pol.period      = (uint32_t)FUNC2(1000000000);
	pol.constraint  = (uint32_t)FUNC2(100000000);
	pol.computation = (uint32_t)FUNC2(10000000);

	pol.preemptible = 0; /* Ignored by OS */
	kr = FUNC4(target_thread, THREAD_TIME_CONSTRAINT_POLICY, (thread_policy_t) &pol,
	                       THREAD_TIME_CONSTRAINT_POLICY_COUNT);
	T_QUIET; FUNC0(kr, "thread_policy_set(THREAD_TIME_CONSTRAINT_POLICY)");
}