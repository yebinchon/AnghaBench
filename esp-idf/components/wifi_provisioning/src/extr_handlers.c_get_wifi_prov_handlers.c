
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ctx; int apply_config_handler; int set_config_handler; int get_status_handler; } ;
typedef TYPE_1__ wifi_prov_config_handlers_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int apply_config_handler ;
 int get_status_handler ;
 int set_config_handler ;

esp_err_t get_wifi_prov_handlers(wifi_prov_config_handlers_t *ptr)
{
    if (!ptr) {
        return ESP_ERR_INVALID_ARG;
    }
    ptr->get_status_handler = get_status_handler;
    ptr->set_config_handler = set_config_handler;
    ptr->apply_config_handler = apply_config_handler;
    ptr->ctx = ((void*)0);
    return ESP_OK;
}
