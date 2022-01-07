
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef int mb_parameter_descriptor_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_2__ {scalar_t__ (* get_cid_info ) (int ,int const**) ;} ;


 int ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_OK ;
 int MB_MASTER_CHECK (int,int ,char*,...) ;
 TYPE_1__* master_interface_ptr ;
 scalar_t__ stub1 (int ,int const**) ;

esp_err_t mbc_master_get_cid_info(uint16_t cid, const mb_parameter_descriptor_t** param_info)
{
    esp_err_t error = ESP_OK;
    MB_MASTER_CHECK((master_interface_ptr != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Master interface is not correctly initialized.");
    MB_MASTER_CHECK((master_interface_ptr->get_cid_info != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Master interface is not correctly initialized.");
    error = master_interface_ptr->get_cid_info(cid, param_info);
    MB_MASTER_CHECK((error == ESP_OK),
                    ESP_ERR_INVALID_STATE,
                    "SERIAL master get cid info failure error=(0x%x).",
                    (uint16_t)error);
    return error;
}
