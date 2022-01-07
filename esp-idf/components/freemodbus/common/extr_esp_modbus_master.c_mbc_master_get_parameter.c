
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_2__ {scalar_t__ (* get_parameter ) (int ,char*,int *,int *) ;} ;


 int ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_OK ;
 int MB_MASTER_CHECK (int,scalar_t__,char*,...) ;
 int esp_err_to_name (scalar_t__) ;
 TYPE_1__* master_interface_ptr ;
 scalar_t__ stub1 (int ,char*,int *,int *) ;

esp_err_t mbc_master_get_parameter(uint16_t cid, char* name, uint8_t* value, uint8_t* type)
{
    esp_err_t error = ESP_OK;
    MB_MASTER_CHECK((master_interface_ptr != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Master interface is not correctly initialized.");
    MB_MASTER_CHECK((master_interface_ptr->get_parameter != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Master interface is not correctly initialized.");
    error = master_interface_ptr->get_parameter(cid, name, value, type);
    MB_MASTER_CHECK((error == ESP_OK),
                    error,
                    "SERIAL master get parameter failure error=(0x%x) (%s).",
                    error, esp_err_to_name(error));
    return error;
}
