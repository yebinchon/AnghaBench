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
 int /*<<< orphan*/  gx_device_cond ; 
 int /*<<< orphan*/  gx_device_cond_mutex ; 
 int /*<<< orphan*/  gx_device_thread ; 
 int gx_stop_dev_thread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *data)
{
   (void)data;

#if defined(HW_RVL) && !defined(IS_SALAMANDER)
   slock_lock(gx_device_cond_mutex);
   gx_stop_dev_thread = true;
   slock_unlock(gx_device_cond_mutex);
   scond_signal(gx_device_cond);
   sthread_join(gx_device_thread);
#endif
}