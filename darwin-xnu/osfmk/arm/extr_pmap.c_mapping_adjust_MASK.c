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
typedef  int /*<<< orphan*/  thread_continue_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MAXPRI_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ mapping_replenish ; 
 int /*<<< orphan*/  mapping_replenish_thread ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(void) {
	kern_return_t mres;

	mres = FUNC0((thread_continue_t)mapping_replenish, NULL, MAXPRI_KERNEL, &mapping_replenish_thread);
	if (mres != KERN_SUCCESS) {
		FUNC1("pmap: mapping_replenish thread creation failed");
	}
	FUNC2(mapping_replenish_thread);
}