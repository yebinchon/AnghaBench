
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int size; } ;
typedef TYPE_1__ esp_partition_t ;
typedef scalar_t__ esp_ota_img_states_t ;
typedef scalar_t__ esp_err_t ;


 int CONFIG_LOG_DEFAULT_LEVEL ;
 int ESP_BT_MODE_BTDM ;
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ;
 scalar_t__ ESP_OK ;
 scalar_t__ ESP_OTA_IMG_PENDING_VERIFY ;
 int ESP_PARTITION_SUBTYPE_DATA_NVS ;
 int ESP_PARTITION_TYPE_DATA ;
 int F_CPU ;
 int btInUse () ;
 int esp_bt_controller_mem_release (int ) ;
 int esp_log_level_set (char*,int ) ;
 TYPE_1__* esp_ota_get_running_partition () ;
 scalar_t__ esp_ota_get_state_partition (TYPE_1__ const*,scalar_t__*) ;
 int esp_ota_mark_app_invalid_rollback_and_reboot () ;
 int esp_ota_mark_app_valid_cancel_rollback () ;
 scalar_t__ esp_partition_erase_range (TYPE_1__ const*,int ,int ) ;
 TYPE_1__* esp_partition_find_first (int ,int ,int *) ;
 int init () ;
 int initVariant () ;
 int log_e (char*,...) ;
 scalar_t__ nvs_flash_init () ;
 int psramInit () ;
 int setCpuFrequencyMhz (int) ;
 scalar_t__ verifyOta () ;

void initArduino()
{
    esp_log_level_set("*", CONFIG_LOG_DEFAULT_LEVEL);
    esp_err_t err = nvs_flash_init();
    if(err == ESP_ERR_NVS_NO_FREE_PAGES){
        const esp_partition_t* partition = esp_partition_find_first(ESP_PARTITION_TYPE_DATA, ESP_PARTITION_SUBTYPE_DATA_NVS, ((void*)0));
        if (partition != ((void*)0)) {
            err = esp_partition_erase_range(partition, 0, partition->size);
            if(!err){
                err = nvs_flash_init();
            } else {
                log_e("Failed to format the broken NVS partition!");
            }
        }
    }
    if(err) {
        log_e("Failed to initialize NVS! Error: %u", err);
    }





    init();
    initVariant();
}
