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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * s_pm_lock ; 
 int /*<<< orphan*/ * s_request_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
    FUNC0(s_request_mutex);
#ifdef CONFIG_PM_ENABLE
    esp_pm_lock_delete(s_pm_lock);
    s_pm_lock = NULL;
#endif
    FUNC2(s_request_mutex);
    s_request_mutex = NULL;
}