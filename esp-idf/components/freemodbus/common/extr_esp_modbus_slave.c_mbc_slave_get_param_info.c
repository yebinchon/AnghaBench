
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int mb_param_info_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_2__ {scalar_t__ (* get_param_info ) (int *,int ) ;} ;


 int ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_OK ;
 int MB_SLAVE_CHECK (int,int ,char*,...) ;
 TYPE_1__* slave_interface_ptr ;
 scalar_t__ stub1 (int *,int ) ;

esp_err_t mbc_slave_get_param_info(mb_param_info_t* reg_info, uint32_t timeout)
{
    esp_err_t error = ESP_OK;
    MB_SLAVE_CHECK((slave_interface_ptr != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Slave interface is not correctly initialized.");
    MB_SLAVE_CHECK((slave_interface_ptr->get_param_info != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Slave interface is not correctly initialized.");
    error = slave_interface_ptr->get_param_info(reg_info, timeout);
    MB_SLAVE_CHECK((error == ESP_OK),
                    ESP_ERR_INVALID_STATE,
                    "SERIAL slave get parameter info failure error=(0x%x).", error);
    return error;
}
