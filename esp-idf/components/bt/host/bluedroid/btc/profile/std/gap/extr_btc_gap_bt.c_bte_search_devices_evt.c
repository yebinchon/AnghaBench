
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int event; int len; TYPE_4__* p_data; } ;
typedef TYPE_3__ tBTA_DM_SEARCH_PARAM ;
typedef int tBTA_DM_SEARCH_EVT ;
struct TYPE_11__ {int remt_name_not_required; int p_eir; } ;
struct TYPE_10__ {int raw_data_size; int p_raw_data; } ;
struct TYPE_13__ {TYPE_2__ inq_res; TYPE_1__ disc_res; } ;
typedef TYPE_4__ tBTA_DM_SEARCH ;
struct TYPE_14__ {int act; int pid; int sig; } ;
typedef TYPE_5__ btc_msg_t ;
typedef int UINT16 ;




 int BTC_GAP_BT_SEARCH_DEVICES_EVT ;
 int BTC_PID_GAP_BT ;
 int BTC_SIG_API_CB ;
 int HCI_EXT_INQ_RESPONSE_LEN ;
 int btc_transfer_context (TYPE_5__*,TYPE_3__*,int,int ) ;
 int check_eir_remote_name (TYPE_4__*,int *,int *) ;
 int search_devices_copy_cb ;

__attribute__((used)) static void bte_search_devices_evt(tBTA_DM_SEARCH_EVT event, tBTA_DM_SEARCH *p_data)
{
    tBTA_DM_SEARCH_PARAM search;
    search.event = event;
    search.p_data = p_data;

    UINT16 param_len = 0;

    if (p_data) {
        param_len += sizeof(tBTA_DM_SEARCH);
    }

    switch (event) {
    case 128: {
        if (p_data->inq_res.p_eir) {
            param_len += HCI_EXT_INQ_RESPONSE_LEN;
        }
    }
    break;

    case 129: {
        if (p_data->disc_res.raw_data_size && p_data->disc_res.p_raw_data) {
            param_len += p_data->disc_res.raw_data_size;
        }
    }
    break;
    }


    if (event == 128) {
        p_data->inq_res.remt_name_not_required = check_eir_remote_name(p_data, ((void*)0), ((void*)0));
    }

    search.len = param_len;
    do {
        btc_msg_t msg;
        msg.sig = BTC_SIG_API_CB;
        msg.pid = BTC_PID_GAP_BT;
        msg.act = BTC_GAP_BT_SEARCH_DEVICES_EVT;

        btc_transfer_context(&msg, &search, sizeof(tBTA_DM_SEARCH_PARAM), search_devices_copy_cb);
    } while (0);
}
