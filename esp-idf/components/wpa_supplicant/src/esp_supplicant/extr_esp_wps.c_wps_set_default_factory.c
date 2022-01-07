
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wps_factory_information_t ;
struct TYPE_3__ {int device_name; int model_number; int model_name; int manufacturer; } ;


 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int MSG_ERROR ;
 TYPE_1__* os_zalloc (int) ;
 TYPE_1__* s_factory_info ;
 int sprintf (int ,char*) ;
 int wpa_printf (int ,char*) ;

int wps_set_default_factory(void)
{
    if (!s_factory_info) {
        s_factory_info = os_zalloc(sizeof(wps_factory_information_t));
        if (!s_factory_info) {
            wpa_printf(MSG_ERROR, "wps factory info malloc failed");
            return ESP_ERR_NO_MEM;
        }
    }

    sprintf(s_factory_info->manufacturer, "ESPRESSIF");
    sprintf(s_factory_info->model_name, "ESPRESSIF IOT");
    sprintf(s_factory_info->model_number, "ESP32");
    sprintf(s_factory_info->device_name, "ESP32 STATION");

    return ESP_OK;
}
