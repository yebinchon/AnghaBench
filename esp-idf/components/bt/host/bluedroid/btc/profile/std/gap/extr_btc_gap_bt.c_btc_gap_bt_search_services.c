
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int event; TYPE_2__* p_data; } ;
typedef TYPE_4__ tBTA_DM_SEARCH_PARAM ;
typedef int esp_bt_uuid_t ;
struct TYPE_9__ {int num_uuids; int * uuid_list; int stat; int bda; } ;
struct TYPE_11__ {TYPE_3__ rmt_srvcs; } ;
typedef TYPE_5__ esp_bt_gap_cb_param_t ;
struct TYPE_7__ {int num_uuids; scalar_t__ p_uuid_list; int result; int bd_addr; } ;
struct TYPE_8__ {TYPE_1__ disc_res; } ;


 int BD_ADDR_LEN ;



 int BTA_SUCCESS ;
 int ESP_BT_GAP_RMT_SRVCS_EVT ;
 int ESP_BT_STATUS_FAIL ;
 int ESP_BT_STATUS_SUCCESS ;
 int ESP_UUID_LEN_128 ;
 int btc_gap_bt_cb_to_app (int ,TYPE_5__*) ;
 int memcpy (int ,int ,int ) ;
 int osi_free (int *) ;
 int * osi_malloc (int) ;
 int uuid128_be_to_esp_uuid (int *,int *) ;

__attribute__((used)) static void btc_gap_bt_search_services(char *p_param)
{
    tBTA_DM_SEARCH_PARAM *p_data = (tBTA_DM_SEARCH_PARAM *)p_param;

    switch (p_data->event) {
    case 128: {
        esp_bt_gap_cb_param_t param;
        esp_bt_uuid_t *uuid_list = ((void*)0);
        memcpy(param.rmt_srvcs.bda, p_data->p_data->disc_res.bd_addr, BD_ADDR_LEN);

        param.rmt_srvcs.stat = ESP_BT_STATUS_FAIL;
        if (p_data->p_data->disc_res.result == BTA_SUCCESS) {
            uuid_list = osi_malloc(sizeof(esp_bt_uuid_t) * p_data->p_data->disc_res.num_uuids);
            if (uuid_list) {
                param.rmt_srvcs.stat = ESP_BT_STATUS_SUCCESS;
                param.rmt_srvcs.num_uuids = p_data->p_data->disc_res.num_uuids;
                param.rmt_srvcs.uuid_list = uuid_list;

                uint8_t *i_uu = (uint8_t *)p_data->p_data->disc_res.p_uuid_list;
                esp_bt_uuid_t *o_uu = uuid_list;
                for (int i = 0; i < p_data->p_data->disc_res.num_uuids; i++, i_uu += ESP_UUID_LEN_128, o_uu++) {
                    uuid128_be_to_esp_uuid(o_uu, i_uu);
                }
            }
        }

        if (param.rmt_srvcs.stat == ESP_BT_STATUS_FAIL) {
            param.rmt_srvcs.num_uuids = 0;
            param.rmt_srvcs.uuid_list = ((void*)0);
        }
        btc_gap_bt_cb_to_app(ESP_BT_GAP_RMT_SRVCS_EVT, &param);

        if (uuid_list) {
            osi_free(uuid_list);
        }
    }
    break;

    case 130:
    case 129:
    default:
        break;
    }
}
