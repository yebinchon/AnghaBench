
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_AG_VAL ;
typedef int tBTA_AG_REGISTER ;
typedef int tBTA_AG_OPEN ;
typedef int tBTA_AG_HDR ;
typedef scalar_t__ tBTA_AG_EVT ;
typedef int tBTA_AG_CONN ;
typedef int tBTA_AG ;
struct TYPE_3__ {scalar_t__ act; int pid; int sig; } ;
typedef TYPE_1__ btc_msg_t ;
typedef scalar_t__ bt_status_t ;


 scalar_t__ BTA_AG_AUDIO_CLOSE_EVT ;
 scalar_t__ BTA_AG_AUDIO_OPEN_EVT ;
 scalar_t__ BTA_AG_CLOSE_EVT ;
 scalar_t__ BTA_AG_CONN_EVT ;
 scalar_t__ BTA_AG_OPEN_EVT ;
 scalar_t__ BTA_AG_REGISTER_EVT ;
 int BTC_ASSERTC (int,char*,scalar_t__) ;
 int BTC_PID_HF ;
 int BTC_SIG_API_CB ;
 scalar_t__ BT_STATUS_SUCCESS ;
 scalar_t__ btc_transfer_context (TYPE_1__*,int *,int,int *) ;

__attribute__((used)) static void bte_hf_evt(tBTA_AG_EVT event, tBTA_AG *param)
{
    int param_len = 0;

    if (BTA_AG_REGISTER_EVT == event) {
        param_len = sizeof(tBTA_AG_REGISTER);
    }
    else if (BTA_AG_OPEN_EVT == event) {
        param_len = sizeof(tBTA_AG_OPEN);
    }
    else if ((BTA_AG_CLOSE_EVT == event) || (BTA_AG_AUDIO_OPEN_EVT == event) || (BTA_AG_AUDIO_CLOSE_EVT == event)) {
        param_len = sizeof(tBTA_AG_HDR);
    }
    else if (BTA_AG_CONN_EVT == event) {
        param_len = sizeof(tBTA_AG_CONN);
    }
    else if (param) {
        param_len = sizeof(tBTA_AG_VAL);
    }
    btc_msg_t msg;
    msg.sig = BTC_SIG_API_CB;
    msg.pid = BTC_PID_HF;
    msg.act = event;


    bt_status_t status = btc_transfer_context(&msg, param, param_len, ((void*)0));

    BTC_ASSERTC(status == BT_STATUS_SUCCESS, "context transfer failed", status);
}
