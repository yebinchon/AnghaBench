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

/* Variables and functions */
 int /*<<< orphan*/ * global_runq ; 
 int /*<<< orphan*/  global_runq_lock ; 
 int /*<<< orphan*/  global_runq_storage ; 
 int /*<<< orphan*/  master_processor ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  proto_processor ; 
 int proto_quantum_us ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ runqueue_generation ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void)
{
	proto_quantum_us = 10*1000;
	
	FUNC0("standard proto timeslicing quantum is %d us\n", proto_quantum_us);

	FUNC2(&global_runq_lock, 0);
	global_runq = &global_runq_storage;
	FUNC1(global_runq);
	runqueue_generation = 0;
	
	proto_processor = master_processor;
}