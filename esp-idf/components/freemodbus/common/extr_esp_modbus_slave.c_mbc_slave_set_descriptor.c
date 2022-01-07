
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mb_register_area_descriptor_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_2__ {scalar_t__ (* set_descriptor ) (int ) ;} ;


 int ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_OK ;
 int MB_SLAVE_CHECK (int,int ,char*,...) ;
 TYPE_1__* slave_interface_ptr ;
 scalar_t__ stub1 (int ) ;

esp_err_t mbc_slave_set_descriptor(mb_register_area_descriptor_t descr_data)
{
    esp_err_t error = ESP_OK;
    MB_SLAVE_CHECK((slave_interface_ptr != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Slave interface is not correctly initialized.");
    MB_SLAVE_CHECK((slave_interface_ptr->set_descriptor != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Slave interface is not correctly initialized.");
    error = slave_interface_ptr->set_descriptor(descr_data);
    MB_SLAVE_CHECK((error == ESP_OK),
                    ESP_ERR_INVALID_STATE,
                    "SERIAL slave set descriptor failure error=(0x%x).", error);
    return error;
}
