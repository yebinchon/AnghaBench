
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int mbs_event_group; int mbs_notification_queue_handle; int mbs_task_handle; } ;
typedef TYPE_1__ mb_slave_options_t ;
typedef int esp_err_t ;
typedef scalar_t__ eMBErrorCode ;
struct TYPE_5__ {TYPE_1__ opts; } ;
typedef int EventBits_t ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_OK ;
 scalar_t__ MB_ENOERR ;
 int MB_EVENT_STACK_STARTED ;
 int MB_SLAVE_CHECK (int,int ,char*,...) ;
 scalar_t__ eMBClose () ;
 scalar_t__ eMBDisable () ;
 int free (TYPE_2__*) ;
 TYPE_2__* mbs_interface_ptr ;
 int vEventGroupDelete (int ) ;
 int vQueueDelete (int ) ;
 int vTaskDelete (int ) ;
 int xEventGroupClearBits (int ,int) ;

__attribute__((used)) static esp_err_t mbc_serial_slave_destroy(void)
{
    MB_SLAVE_CHECK((mbs_interface_ptr != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Slave interface is not correctly initialized.");
    mb_slave_options_t* mbs_opts = &mbs_interface_ptr->opts;
    eMBErrorCode mb_error = MB_ENOERR;

    EventBits_t flag = xEventGroupClearBits(mbs_opts->mbs_event_group,
                                    (EventBits_t)MB_EVENT_STACK_STARTED);
    MB_SLAVE_CHECK((flag & MB_EVENT_STACK_STARTED),
                ESP_ERR_INVALID_STATE, "mb stack stop event failure.");

    mb_error = eMBDisable();
    MB_SLAVE_CHECK((mb_error == MB_ENOERR), ESP_ERR_INVALID_STATE, "mb stack disable failure.");
    (void)vTaskDelete(mbs_opts->mbs_task_handle);
    (void)vQueueDelete(mbs_opts->mbs_notification_queue_handle);
    (void)vEventGroupDelete(mbs_opts->mbs_event_group);
    mb_error = eMBClose();
    MB_SLAVE_CHECK((mb_error == MB_ENOERR), ESP_ERR_INVALID_STATE,
            "mb stack close failure returned (0x%x).", (uint32_t)mb_error);
    free(mbs_interface_ptr);
    mbs_interface_ptr = ((void*)0);
    return ESP_OK;
}
