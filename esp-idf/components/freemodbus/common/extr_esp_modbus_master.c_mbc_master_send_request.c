
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mb_param_request_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_2__ {scalar_t__ (* send_request ) (int *,void*) ;} ;


 int ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_OK ;
 int MB_MASTER_CHECK (int,scalar_t__,char*,...) ;
 int esp_err_to_name (scalar_t__) ;
 TYPE_1__* master_interface_ptr ;
 scalar_t__ stub1 (int *,void*) ;

esp_err_t mbc_master_send_request(mb_param_request_t* request, void* data_ptr)
{
    esp_err_t error = ESP_OK;
    MB_MASTER_CHECK((master_interface_ptr != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Master interface is not correctly initialized.");
    MB_MASTER_CHECK((master_interface_ptr->send_request != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Master interface is not correctly initialized.");
    error = master_interface_ptr->send_request(request, data_ptr);
    MB_MASTER_CHECK((error == ESP_OK),
                    error,
                    "SERIAL master send request failure error=(0x%x) (%s).",
                    error, esp_err_to_name(error));
    return ESP_OK;
}
