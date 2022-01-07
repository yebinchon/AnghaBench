
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef void* uint16_t ;
struct TYPE_5__ {int mbs_notification_queue_handle; } ;
typedef TYPE_1__ mb_slave_options_t ;
struct TYPE_6__ {void* mb_offset; int time_stamp; int * address; void* size; int type; } ;
typedef TYPE_2__ mb_param_info_t ;
typedef int mb_event_group_t ;
typedef int esp_err_t ;
struct TYPE_7__ {TYPE_1__ opts; } ;
typedef scalar_t__ BaseType_t ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_FAIL ;
 int ESP_LOGD (int ,char*,...) ;
 int ESP_OK ;
 int MB_PAR_INFO_TOUT ;
 int MB_SLAVE_CHECK (int ,int ,char*) ;
 int MB_SLAVE_TAG ;
 scalar_t__ errQUEUE_FULL ;
 int get_time_stamp () ;
 TYPE_4__* mbs_interface_ptr ;
 scalar_t__ pdTRUE ;
 scalar_t__ xQueueSend (int ,TYPE_2__*,int ) ;

__attribute__((used)) static esp_err_t send_param_info(mb_event_group_t par_type, uint16_t mb_offset,
                                    uint8_t* par_address, uint16_t par_size)
{
    MB_SLAVE_CHECK((mbs_interface_ptr != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Slave interface is not correctly initialized.");
    mb_slave_options_t* mbs_opts = &mbs_interface_ptr->opts;
    esp_err_t error = ESP_FAIL;
    mb_param_info_t par_info;

    par_info.type = par_type;
    par_info.size = par_size;
    par_info.address = par_address;
    par_info.time_stamp = get_time_stamp();
    par_info.mb_offset = mb_offset;
    BaseType_t status = xQueueSend(mbs_opts->mbs_notification_queue_handle,
                                    &par_info, MB_PAR_INFO_TOUT);
    if (pdTRUE == status) {
        ESP_LOGD(MB_SLAVE_TAG, "Queue send parameter info (type, address, size): %d, 0x%.4x, %d",
                par_type, (uint32_t)par_address, par_size);
        error = ESP_OK;
    } else if (errQUEUE_FULL == status) {
        ESP_LOGD(MB_SLAVE_TAG, "Parameter queue is overflowed.");
    }
    return error;
}
