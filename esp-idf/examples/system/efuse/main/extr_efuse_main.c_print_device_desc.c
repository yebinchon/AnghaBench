
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int device_role; int custom_secure_version; int setting_2; int setting_1; int module_version; } ;
typedef TYPE_1__ device_desc_t ;


 int ESP_LOGI (int ,char*,...) ;
 int TAG ;

__attribute__((used)) static void print_device_desc(device_desc_t *desc)
{
    ESP_LOGI(TAG, "module_version = %d", desc->module_version);
    if (desc->device_role == 0) {
        ESP_LOGI(TAG, "device_role = None");
    } else if (desc->device_role == 1) {
        ESP_LOGI(TAG, "device_role = Master");
    } else if (desc->device_role == 2) {
        ESP_LOGI(TAG, "device_role = Slave");
    } else {
        ESP_LOGI(TAG, "device_role = Not supported");
    }
    ESP_LOGI(TAG, "setting_1 = %d", desc->setting_1);
    ESP_LOGI(TAG, "setting_2 = %d", desc->setting_2);
    ESP_LOGI(TAG, "custom_secure_version = %d", desc->custom_secure_version);
}
