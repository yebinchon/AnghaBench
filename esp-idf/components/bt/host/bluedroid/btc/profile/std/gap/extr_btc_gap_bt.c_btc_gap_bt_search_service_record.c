
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int event; TYPE_4__* p_data; } ;
typedef TYPE_5__ tBTA_DM_SEARCH_PARAM ;
struct TYPE_8__ {int stat; } ;
struct TYPE_9__ {int bda; } ;
struct TYPE_13__ {TYPE_1__ rmt_srvc_rec; TYPE_2__ rmt_srvcs; } ;
typedef TYPE_6__ esp_bt_gap_cb_param_t ;
struct TYPE_10__ {int raw_data_size; int p_raw_data; int bd_addr; } ;
struct TYPE_11__ {TYPE_3__ disc_res; } ;


 int BD_ADDR_LEN ;


 int ESP_BT_GAP_RMT_SRVC_REC_EVT ;
 int ESP_BT_STATUS_FAIL ;
 int ESP_BT_STATUS_SUCCESS ;
 int btc_gap_bt_cb_to_app (int ,TYPE_6__*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void btc_gap_bt_search_service_record(char *p_param)
{
    tBTA_DM_SEARCH_PARAM *p_data = (tBTA_DM_SEARCH_PARAM *)p_param;

    switch (p_data->event) {
    case 128: {
        esp_bt_gap_cb_param_t param;
        memcpy(param.rmt_srvcs.bda, p_data->p_data->disc_res.bd_addr, BD_ADDR_LEN);
        if (p_data->p_data->disc_res.p_raw_data && p_data->p_data->disc_res.raw_data_size > 0) {
            param.rmt_srvc_rec.stat = ESP_BT_STATUS_SUCCESS;


        } else {
            param.rmt_srvc_rec.stat = ESP_BT_STATUS_FAIL;


        }
        btc_gap_bt_cb_to_app(ESP_BT_GAP_RMT_SRVC_REC_EVT, &param);
    }
    break;
    case 129:
    default:
        break;
    }
}
