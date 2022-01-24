#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  thread_gpu_ns; } ;
struct TYPE_4__ {TYPE_1__ machine; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 

void
FUNC1(uint64_t gpu_ns_delta) {
	FUNC0()->machine.thread_gpu_ns += gpu_ns_delta;
}