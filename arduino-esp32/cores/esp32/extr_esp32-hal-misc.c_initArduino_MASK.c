#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ esp_partition_t ;
typedef  scalar_t__ esp_ota_img_states_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_LOG_DEFAULT_LEVEL ; 
 int /*<<< orphan*/  ESP_BT_MODE_BTDM ; 
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ; 
 scalar_t__ ESP_OK ; 
 scalar_t__ ESP_OTA_IMG_PENDING_VERIFY ; 
 int /*<<< orphan*/  ESP_PARTITION_SUBTYPE_DATA_NVS ; 
 int /*<<< orphan*/  ESP_PARTITION_TYPE_DATA ; 
 int F_CPU ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_1__ const*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ FUNC15 () ; 

void FUNC16()
{
#ifdef CONFIG_APP_ROLLBACK_ENABLE
    const esp_partition_t *running = esp_ota_get_running_partition();
    esp_ota_img_states_t ota_state;
    if (esp_ota_get_state_partition(running, &ota_state) == ESP_OK) {
        if (ota_state == ESP_OTA_IMG_PENDING_VERIFY) {
            if (verifyOta()) {
                esp_ota_mark_app_valid_cancel_rollback();
            } else {
                log_e("OTA verification failed! Start rollback to the previous version ...");
                esp_ota_mark_app_invalid_rollback_and_reboot();
            }
        }
    }
#endif
    //init proper ref tick value for PLL (uncomment if REF_TICK is different than 1MHz)
    //ESP_REG(APB_CTRL_PLL_TICK_CONF_REG) = APB_CLK_FREQ / REF_CLK_FREQ - 1;
#ifdef F_CPU
    setCpuFrequencyMhz(F_CPU/1000000);
#endif
#if CONFIG_SPIRAM_SUPPORT
    psramInit();
#endif
    FUNC2("*", CONFIG_LOG_DEFAULT_LEVEL);
    esp_err_t err = FUNC12();
    if(err == ESP_ERR_NVS_NO_FREE_PAGES){
        const esp_partition_t* partition = FUNC8(ESP_PARTITION_TYPE_DATA, ESP_PARTITION_SUBTYPE_DATA_NVS, NULL);
        if (partition != NULL) {
            err = FUNC7(partition, 0, partition->size);
            if(!err){
                err = FUNC12();
            } else {
                FUNC11("Failed to format the broken NVS partition!");
            }
        }
    }
    if(err) {
        FUNC11("Failed to initialize NVS! Error: %u", err);
    }
#ifdef CONFIG_BT_ENABLED
    if(!btInUse()){
        esp_bt_controller_mem_release(ESP_BT_MODE_BTDM);
    }
#endif
    FUNC9();
    FUNC10();
}