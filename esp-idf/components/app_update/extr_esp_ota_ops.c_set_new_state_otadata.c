
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_ota_img_states_t ;


 int ESP_LOGD (int ,char*) ;
 int ESP_OTA_IMG_NEW ;
 int ESP_OTA_IMG_UNDEFINED ;
 int TAG ;

__attribute__((used)) static esp_ota_img_states_t set_new_state_otadata(void)
{




    return ESP_OTA_IMG_UNDEFINED;

}
