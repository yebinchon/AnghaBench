
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {int state; } ;
struct TYPE_5__ {TYPE_1__ disc_st_chg; } ;
typedef TYPE_2__ esp_bt_gap_cb_param_t ;


 scalar_t__ BTM_BL_INQUIRY_CANCELLED ;
 scalar_t__ BTM_BL_INQUIRY_COMPLETE ;
 scalar_t__ BTM_BL_INQUIRY_STARTED ;
 int ESP_BT_GAP_DISCOVERY_STARTED ;
 int ESP_BT_GAP_DISCOVERY_STOPPED ;
 int ESP_BT_GAP_DISC_STATE_CHANGED_EVT ;
 int btc_gap_bt_cb_to_app (int ,TYPE_2__*) ;
 int btc_gap_bt_inquiry_in_progress ;

void btc_gap_bt_busy_level_updated(uint8_t bl_flags)
{
    esp_bt_gap_cb_param_t param;

    if (bl_flags == BTM_BL_INQUIRY_STARTED) {
        param.disc_st_chg.state = ESP_BT_GAP_DISCOVERY_STARTED;
        btc_gap_bt_cb_to_app(ESP_BT_GAP_DISC_STATE_CHANGED_EVT, &param);
        btc_gap_bt_inquiry_in_progress = 1;
    } else if (bl_flags == BTM_BL_INQUIRY_CANCELLED ||
               bl_flags == BTM_BL_INQUIRY_COMPLETE) {
        param.disc_st_chg.state = ESP_BT_GAP_DISCOVERY_STOPPED;
        btc_gap_bt_cb_to_app(ESP_BT_GAP_DISC_STATE_CHANGED_EVT, &param);
        btc_gap_bt_inquiry_in_progress = 0;
    }
}
