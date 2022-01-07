
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ota_seq; scalar_t__ crc; scalar_t__ ota_state; } ;
typedef TYPE_1__ esp_ota_select_entry_t ;


 scalar_t__ ESP_OTA_IMG_ABORTED ;
 scalar_t__ ESP_OTA_IMG_INVALID ;
 scalar_t__ UINT32_MAX ;
 scalar_t__ bootloader_common_ota_select_crc (TYPE_1__ const*) ;

__attribute__((used)) static bool check_invalid_otadata (const esp_ota_select_entry_t *s) {
    return s->ota_seq != UINT32_MAX &&
           s->crc == bootloader_common_ota_select_crc(s) &&
           (s->ota_state == ESP_OTA_IMG_INVALID ||
            s->ota_state == ESP_OTA_IMG_ABORTED);
}
