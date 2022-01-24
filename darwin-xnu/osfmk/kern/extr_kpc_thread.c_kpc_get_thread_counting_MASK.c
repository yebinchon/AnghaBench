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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  kpc_thread_classes ; 
 int /*<<< orphan*/  kpc_thread_lock ; 
 int kpc_threads_counting ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

uint32_t
FUNC2(void)
{
	uint32_t kpc_thread_classes_tmp;
	int kpc_threads_counting_tmp;

	/* Make sure we get a consistent snapshot of these values */
	FUNC0(&kpc_thread_lock);

	kpc_thread_classes_tmp = kpc_thread_classes;
	kpc_threads_counting_tmp = kpc_threads_counting;

	FUNC1(&kpc_thread_lock);

	if( kpc_threads_counting_tmp )
		return kpc_thread_classes_tmp;
	else
		return 0;
}