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
 int ESP_ERR_NO_MEM ; 
 int ESP_OK ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  SIG_WPS_NUM ; 
 int /*<<< orphan*/  WPS_TASK_STACK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int pdPASS ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 void* s_wps_api_sem ; 
 int /*<<< orphan*/  s_wps_data_lock ; 
 int /*<<< orphan*/  s_wps_queue ; 
 int /*<<< orphan*/  s_wps_sig_cnt ; 
 int /*<<< orphan*/ * s_wps_task_create_sem ; 
 int /*<<< orphan*/  s_wps_task_hdl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  wps_task ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

int FUNC10(void)
{
    int ret = 0;

    /* Call wps_task_deinit() first in case esp_wifi_wps_disable() fails
     */
    FUNC4();

    s_wps_data_lock = FUNC7();
    if (!s_wps_data_lock) {
        FUNC2(MSG_ERROR, "wps task init: failed to alloc data lock");
        goto _wps_no_mem;
    }

    s_wps_api_sem = FUNC6(1, 0);
    if (!s_wps_api_sem) {
        FUNC2(MSG_ERROR, "wps task init: failed to create api sem");
        goto _wps_no_mem;
    }

    s_wps_task_create_sem = FUNC6(1, 0);
    if (!s_wps_task_create_sem) {
        FUNC2(MSG_ERROR, "wps task init: failed to create task sem");
        goto _wps_no_mem;
    }

    FUNC0(s_wps_sig_cnt, SIG_WPS_NUM);
    s_wps_queue = FUNC5(SIG_WPS_NUM, sizeof( void * ) );
    if (!s_wps_queue) {
        FUNC2(MSG_ERROR, "wps task init: failed to alloc queue");
        goto _wps_no_mem;
    }

    FUNC3();

    ret = FUNC9(wps_task, "wpsT", WPS_TASK_STACK_SIZE, NULL, 2, &s_wps_task_hdl);
    if (pdPASS != ret) {
        FUNC2(MSG_ERROR, "wps enable: failed to create task");
        goto _wps_no_mem;
    }

    FUNC8(s_wps_task_create_sem, portMAX_DELAY);
    FUNC1(s_wps_task_create_sem);
    s_wps_task_create_sem = NULL;

    FUNC2(MSG_DEBUG, "wifi wps enable: task prio:%d, stack:%d", 2, WPS_TASK_STACK_SIZE);
    return ESP_OK;

_wps_no_mem:
    FUNC4();
    return ESP_ERR_NO_MEM;
}