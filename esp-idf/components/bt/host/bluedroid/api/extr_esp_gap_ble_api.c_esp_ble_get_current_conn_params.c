
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timeout; int latency; int interval; } ;
typedef TYPE_1__ esp_gap_conn_params_t ;
typedef int esp_err_t ;
typedef int esp_bd_addr_t ;


 scalar_t__ BTM_GetCurrentConnParams (int ,int *,int *,int *) ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NOT_FOUND ;
 int ESP_OK ;

esp_err_t esp_ble_get_current_conn_params(esp_bd_addr_t bd_addr, esp_gap_conn_params_t *conn_params)
{
    if(!bd_addr || !conn_params) {
        return ESP_ERR_INVALID_ARG;
    }
    if(BTM_GetCurrentConnParams(bd_addr, &conn_params->interval, &conn_params->latency, &conn_params->timeout)) {
        return ESP_OK;
    }
    return ESP_ERR_NOT_FOUND;
}
