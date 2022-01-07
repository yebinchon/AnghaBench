
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hidd_le_env_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int enabled; } ;


 int ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int HID_LE_PRF_TAG ;
 TYPE_1__ hidd_le_env ;
 int memset (TYPE_1__*,int ,int) ;

esp_err_t esp_hidd_profile_init(void)
{
     if (hidd_le_env.enabled) {
        ESP_LOGE(HID_LE_PRF_TAG, "HID device profile already initialized");
        return ESP_FAIL;
    }

    memset(&hidd_le_env, 0, sizeof(hidd_le_env_t));
    hidd_le_env.enabled = 1;
    return ESP_OK;
}
