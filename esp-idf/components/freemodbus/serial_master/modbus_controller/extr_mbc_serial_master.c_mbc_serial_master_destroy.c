
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int mbm_event_group; int mbm_task_handle; } ;
typedef TYPE_1__ mb_master_options_t ;
typedef int esp_err_t ;
typedef scalar_t__ eMBErrorCode ;
struct TYPE_5__ {TYPE_1__ opts; } ;
typedef int EventBits_t ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_OK ;
 scalar_t__ MB_ENOERR ;
 int MB_EVENT_STACK_STARTED ;
 int MB_MASTER_CHECK (int,int ,char*,...) ;
 scalar_t__ eMBMasterClose () ;
 scalar_t__ eMBMasterDisable () ;
 int free (TYPE_2__*) ;
 TYPE_2__* mbm_interface_ptr ;
 int vEventGroupDelete (int ) ;
 int vTaskDelete (int ) ;
 int xEventGroupClearBits (int ,int) ;

__attribute__((used)) static esp_err_t mbc_serial_master_destroy(void)
{
    MB_MASTER_CHECK((mbm_interface_ptr != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Master interface uninitialized.");
    mb_master_options_t* mbm_opts = &mbm_interface_ptr->opts;
    eMBErrorCode mb_error = MB_ENOERR;

    EventBits_t flag = xEventGroupClearBits(mbm_opts->mbm_event_group,
                                    (EventBits_t)MB_EVENT_STACK_STARTED);
    MB_MASTER_CHECK((flag & MB_EVENT_STACK_STARTED),
                ESP_ERR_INVALID_STATE, "mb stack stop event failure.");

    mb_error = eMBMasterDisable();
    MB_MASTER_CHECK((mb_error == MB_ENOERR), ESP_ERR_INVALID_STATE, "mb stack disable failure.");
    (void)vTaskDelete(mbm_opts->mbm_task_handle);
    (void)vEventGroupDelete(mbm_opts->mbm_event_group);
    mb_error = eMBMasterClose();
    MB_MASTER_CHECK((mb_error == MB_ENOERR), ESP_ERR_INVALID_STATE,
            "mb stack close failure returned (0x%x).", (uint32_t)mb_error);
    free(mbm_interface_ptr);
    mbm_interface_ptr = ((void*)0);
    return ESP_OK;
}
