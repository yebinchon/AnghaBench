
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int custom_secure_version; int setting_2; int setting_1; int device_role; int module_version; } ;
typedef TYPE_1__ device_desc_t ;


 int ESP_EFUSE_CUSTOM_SECURE_VERSION ;
 int ESP_EFUSE_DEVICE_ROLE ;
 int ESP_EFUSE_MODULE_VERSION ;
 int ESP_EFUSE_SETTING_1 ;
 int ESP_EFUSE_SETTING_2 ;
 int ESP_ERROR_CHECK (int ) ;
 int esp_efuse_read_field_blob (int ,int *,int) ;
 int esp_efuse_read_field_cnt (int ,int *) ;
 int print_device_desc (TYPE_1__*) ;

__attribute__((used)) static void read_device_desc_efuse_fields(device_desc_t *desc)
{
    ESP_ERROR_CHECK(esp_efuse_read_field_blob(ESP_EFUSE_MODULE_VERSION, &desc->module_version, 8));
    ESP_ERROR_CHECK(esp_efuse_read_field_blob(ESP_EFUSE_DEVICE_ROLE, &desc->device_role, 3));
    ESP_ERROR_CHECK(esp_efuse_read_field_blob(ESP_EFUSE_SETTING_1, &desc->setting_1, 6));
    ESP_ERROR_CHECK(esp_efuse_read_field_blob(ESP_EFUSE_SETTING_2, &desc->setting_2, 5));
    ESP_ERROR_CHECK(esp_efuse_read_field_cnt(ESP_EFUSE_CUSTOM_SECURE_VERSION, &desc->custom_secure_version));
    print_device_desc(desc);
}
