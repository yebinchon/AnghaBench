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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  TYPE_1__* thread_t ;
struct thread_effective_policy {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  effective_policy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 

uintptr_t
FUNC1(thread_t thread)
{
	FUNC0(sizeof(struct thread_effective_policy) == sizeof(uint64_t), "size invariant violated");

	uintptr_t* raw = (uintptr_t*)(void*)&thread->effective_policy;
	return raw[0];
}