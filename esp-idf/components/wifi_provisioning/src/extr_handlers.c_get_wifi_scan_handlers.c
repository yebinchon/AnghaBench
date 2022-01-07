
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ctx; int scan_result; int scan_status; int scan_start; } ;
typedef TYPE_1__ wifi_prov_scan_handlers_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int scan_result ;
 int scan_start ;
 int scan_status ;

esp_err_t get_wifi_scan_handlers(wifi_prov_scan_handlers_t *ptr)
{
    if (!ptr) {
        return ESP_ERR_INVALID_ARG;
    }
    ptr->scan_start = scan_start;
    ptr->scan_status = scan_status;
    ptr->scan_result = scan_result;
    ptr->ctx = ((void*)0);
    return ESP_OK;
}
