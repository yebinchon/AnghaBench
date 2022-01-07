
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int event; int len; TYPE_3__* p_data; } ;
typedef TYPE_2__ tBTA_DM_SEARCH_PARAM ;
typedef int tBTA_DM_SEARCH_EVT ;
struct TYPE_8__ {int num_uuids; int result; } ;
struct TYPE_10__ {TYPE_1__ disc_res; } ;
typedef TYPE_3__ tBTA_DM_SEARCH ;
struct TYPE_11__ {int act; int pid; int sig; } ;
typedef TYPE_4__ btc_msg_t ;
typedef int UINT16 ;



 int BTA_SUCCESS ;
 int BTC_GAP_BT_SEARCH_SERVICES_EVT ;
 int BTC_PID_GAP_BT ;
 int BTC_SIG_API_CB ;
 int MAX_UUID_SIZE ;
 int btc_transfer_context (TYPE_4__*,TYPE_2__*,int,int ) ;
 int search_services_copy_cb ;

__attribute__((used)) static void bte_dm_search_services_evt(tBTA_DM_SEARCH_EVT event, tBTA_DM_SEARCH *p_data)
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
        if ((p_data->disc_res.result == BTA_SUCCESS) && (p_data->disc_res.num_uuids > 0)) {
            param_len += (p_data->disc_res.num_uuids * MAX_UUID_SIZE);
        }
    } break;
    }
    search.len = param_len;
    do {
        btc_msg_t msg;
        msg.sig = BTC_SIG_API_CB;
        msg.pid = BTC_PID_GAP_BT;
        msg.act = BTC_GAP_BT_SEARCH_SERVICES_EVT;
        btc_transfer_context(&msg, &search, sizeof(tBTA_DM_SEARCH_PARAM), search_services_copy_cb);
    } while (0);
}
