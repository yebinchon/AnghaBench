
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int otadata ;
typedef int esp_partition_pos_t ;
struct TYPE_10__ {int ota_seq; int crc; int ota_state; } ;
typedef TYPE_2__ esp_ota_select_entry_t ;
struct TYPE_9__ {scalar_t__ offset; } ;
struct TYPE_11__ {int * ota; TYPE_1__ ota_info; } ;
typedef TYPE_3__ bootloader_state_t ;


 int ESP_LOGI (int ,char*,int) ;
 int ESP_OTA_IMG_VALID ;
 int FACTORY_INDEX ;
 int FLASH_SECTOR_SIZE ;
 int TAG ;
 int bootloader_common_ota_select_crc (TYPE_2__*) ;
 int bootloader_common_update_rtc_retain_mem (int *,int) ;
 int esp_flash_encryption_enabled () ;
 int index_to_partition (TYPE_3__ const*,int) ;
 int memset (TYPE_2__*,int,int) ;
 int ota_has_initial_contents ;
 int update_anti_rollback (int *) ;
 int write_otadata (TYPE_2__*,scalar_t__,int) ;

__attribute__((used)) static void set_actual_ota_seq(const bootloader_state_t *bs, int index)
{
    if (index > FACTORY_INDEX && ota_has_initial_contents == 1) {
        esp_ota_select_entry_t otadata;
        memset(&otadata, 0xFF, sizeof(otadata));
        otadata.ota_seq = index + 1;
        otadata.ota_state = ESP_OTA_IMG_VALID;
        otadata.crc = bootloader_common_ota_select_crc(&otadata);

        bool write_encrypted = esp_flash_encryption_enabled();
        write_otadata(&otadata, bs->ota_info.offset + FLASH_SECTOR_SIZE * 0, write_encrypted);
        ESP_LOGI(TAG, "Set actual ota_seq=%d in otadata[0]", otadata.ota_seq);



    }




}
