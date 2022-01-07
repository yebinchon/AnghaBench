
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * mbs_notification_queue_handle; } ;
typedef TYPE_1__ mb_slave_options_t ;
typedef int mb_param_info_t ;
typedef int esp_err_t ;
struct TYPE_4__ {TYPE_1__ opts; } ;
typedef scalar_t__ BaseType_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_TIMEOUT ;
 int ESP_OK ;
 int MB_SLAVE_CHECK (int ,int ,char*) ;
 TYPE_2__* mbs_interface_ptr ;
 int pdMS_TO_TICKS (int ) ;
 scalar_t__ pdTRUE ;
 scalar_t__ xQueueReceive (int *,int *,int ) ;

__attribute__((used)) static esp_err_t mbc_serial_slave_get_param_info(mb_param_info_t* reg_info, uint32_t timeout)
{
    MB_SLAVE_CHECK((mbs_interface_ptr != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Slave interface is not correctly initialized.");
    mb_slave_options_t* mbs_opts = &mbs_interface_ptr->opts;
    esp_err_t err = ESP_ERR_TIMEOUT;
    MB_SLAVE_CHECK((mbs_opts->mbs_notification_queue_handle != ((void*)0)),
                ESP_ERR_INVALID_ARG, "mb queue handle is invalid.");
    MB_SLAVE_CHECK((reg_info != ((void*)0)), ESP_ERR_INVALID_ARG, "mb register information is invalid.");
    BaseType_t status = xQueueReceive(mbs_opts->mbs_notification_queue_handle,
                                        reg_info, pdMS_TO_TICKS(timeout));
    if (status == pdTRUE) {
        err = ESP_OK;
    }
    return err;
}
