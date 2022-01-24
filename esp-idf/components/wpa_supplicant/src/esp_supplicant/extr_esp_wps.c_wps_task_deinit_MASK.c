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
 int ESP_OK ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * s_wps_api_sem ; 
 int /*<<< orphan*/ * s_wps_data_lock ; 
 int /*<<< orphan*/ * s_wps_queue ; 
 int /*<<< orphan*/  s_wps_rxq ; 
 int /*<<< orphan*/ * s_wps_task_create_sem ; 
 int /*<<< orphan*/ * s_wps_task_hdl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(void)
{
    FUNC4(MSG_DEBUG, "wps task deinit");

    if (s_wps_api_sem) {
        FUNC2(s_wps_api_sem);
        s_wps_api_sem = NULL;
        FUNC4(MSG_DEBUG, "wps task deinit: free api sem");
    }

    if (s_wps_task_create_sem) {
        FUNC2(s_wps_task_create_sem);
        s_wps_task_create_sem = NULL;
        FUNC4(MSG_DEBUG, "wps task deinit: free task create sem");
    }

    if (s_wps_queue) {
        FUNC1(s_wps_queue);
        s_wps_queue = NULL;
        FUNC4(MSG_DEBUG, "wps task deinit: free queue");
    }

    if (s_wps_task_hdl) {
        FUNC3(s_wps_task_hdl);
        s_wps_task_hdl = NULL;
        FUNC4(MSG_DEBUG, "wps task deinit: free task");
    }

    if (FUNC0(&s_wps_rxq) != NULL){
        FUNC5();
    }

    if (s_wps_data_lock) {
        FUNC2(s_wps_data_lock);
        s_wps_data_lock = NULL;
        FUNC4(MSG_DEBUG, "wps task deinit: free data lock");
    }

    return ESP_OK;
}