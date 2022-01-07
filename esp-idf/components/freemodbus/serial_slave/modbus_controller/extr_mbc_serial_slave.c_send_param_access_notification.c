
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int mbs_event_group; } ;
typedef TYPE_1__ mb_slave_options_t ;
typedef int mb_event_group_t ;
typedef int esp_err_t ;
struct TYPE_4__ {TYPE_1__ opts; } ;
typedef int EventBits_t ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_FAIL ;
 int ESP_LOGD (int ,char*,int ) ;
 int ESP_OK ;
 int MB_SLAVE_CHECK (int ,int ,char*) ;
 int MB_SLAVE_TAG ;
 TYPE_2__* mbs_interface_ptr ;
 int xEventGroupSetBits (int ,int ) ;

__attribute__((used)) static esp_err_t send_param_access_notification(mb_event_group_t event)
{
    MB_SLAVE_CHECK((mbs_interface_ptr != ((void*)0)),
                    ESP_ERR_INVALID_STATE,
                    "Slave interface is not correctly initialized.");
    mb_slave_options_t* mbs_opts = &mbs_interface_ptr->opts;
    esp_err_t err = ESP_FAIL;
    mb_event_group_t bits = (mb_event_group_t)xEventGroupSetBits(mbs_opts->mbs_event_group,
                                                                    (EventBits_t)event);
    if (bits & event) {
        ESP_LOGD(MB_SLAVE_TAG, "The MB_REG_CHANGE_EVENT = 0x%.2x is set.", (uint8_t)event);
        err = ESP_OK;
    }
    return err;
}
