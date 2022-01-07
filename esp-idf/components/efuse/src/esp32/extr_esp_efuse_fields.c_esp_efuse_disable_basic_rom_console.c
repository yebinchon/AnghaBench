
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int ESP_EARLY_LOGI (int ,char*) ;
 int ESP_EFUSE_CONSOLE_DEBUG_DISABLE ;
 int TAG ;
 int esp_efuse_read_field_blob (int ,scalar_t__*,int) ;
 int esp_efuse_write_field_cnt (int ,int) ;

void esp_efuse_disable_basic_rom_console(void)
{
    uint8_t console_debug_disable = 0;
    esp_efuse_read_field_blob(ESP_EFUSE_CONSOLE_DEBUG_DISABLE, &console_debug_disable, 1);
    if (console_debug_disable == 0) {
        esp_efuse_write_field_cnt(ESP_EFUSE_CONSOLE_DEBUG_DISABLE, 1);
        ESP_EARLY_LOGI(TAG, "Disable BASIC ROM Console fallback via efuse...");
    }
}
