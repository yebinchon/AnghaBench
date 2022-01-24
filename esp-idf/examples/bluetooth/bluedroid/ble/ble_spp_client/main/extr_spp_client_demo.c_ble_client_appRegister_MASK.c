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
typedef  scalar_t__ esp_err_t ;
typedef  int /*<<< orphan*/  err_msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  GATTC_TAG ; 
 int /*<<< orphan*/  PROFILE_APP_ID ; 
 void* cmd_heartbeat_queue ; 
 void* cmd_reg_queue ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  esp_gap_cb ; 
 int /*<<< orphan*/  esp_gattc_cb ; 
 int /*<<< orphan*/  spp_client_reg_task ; 
 int /*<<< orphan*/  spp_heart_beat_task ; 
 void* FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

void FUNC9(void)
{
    esp_err_t status;
    char err_msg[20];

    FUNC1(GATTC_TAG, "register callback");

    //register the scan callback function to the gap module
    if ((status = FUNC2(esp_gap_cb)) != ESP_OK) {
        FUNC0(GATTC_TAG, "gap register error: %s", FUNC6(status, err_msg, sizeof(err_msg)));
        return;
    }
    //register the callback function to the gattc module
    if ((status = FUNC5(esp_gattc_cb)) != ESP_OK) {
        FUNC0(GATTC_TAG, "gattc register error: %s", FUNC6(status, err_msg, sizeof(err_msg)));
        return;
    }
    FUNC4(PROFILE_APP_ID);

    esp_err_t local_mtu_ret = FUNC3(200);
    if (local_mtu_ret){
        FUNC0(GATTC_TAG, "set local  MTU failed: %s", FUNC6(local_mtu_ret, err_msg, sizeof(err_msg)));
    }

    cmd_reg_queue = FUNC7(10, sizeof(uint32_t));
    FUNC8(spp_client_reg_task, "spp_client_reg_task", 2048, NULL, 10, NULL);

#ifdef SUPPORT_HEARTBEAT
    cmd_heartbeat_queue = xQueueCreate(10, sizeof(uint32_t));
    xTaskCreate(spp_heart_beat_task, "spp_heart_beat_task", 2048, NULL, 10, NULL);
#endif
}