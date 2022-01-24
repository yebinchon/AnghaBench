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
 scalar_t__ ERR_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  g_lwip_protect_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sys_thread_sem_free ; 
 int /*<<< orphan*/  sys_thread_sem_key ; 

void
FUNC4(void)
{
  if (ERR_OK != FUNC3(&g_lwip_protect_mutex)) {
    FUNC0(TAG, "sys_init: failed to init lwip protect mutex\n");
  }

  // Create the pthreads key for the per-thread semaphore storage
  FUNC2(&sys_thread_sem_key, sys_thread_sem_free);

  FUNC1();
}