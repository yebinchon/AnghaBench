
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_DM_SEC_EVT ;
typedef int tBTA_DM_SEC ;
struct TYPE_3__ {int act; int pid; int sig; } ;
typedef TYPE_1__ btc_msg_t ;
typedef int btc_dm_sec_args_t ;


 int BTC_PID_DM_SEC ;
 int BTC_SIG_API_CB ;
 int btc_dm_sec_arg_deep_copy ;
 int btc_transfer_context (TYPE_1__*,int *,int,int ) ;

void btc_dm_sec_evt(tBTA_DM_SEC_EVT event, tBTA_DM_SEC *data)
{
    btc_msg_t msg;

    msg.sig = BTC_SIG_API_CB;
    msg.pid = BTC_PID_DM_SEC;
    msg.act = event;

    btc_transfer_context(&msg, (btc_dm_sec_args_t *)data, sizeof(btc_dm_sec_args_t), btc_dm_sec_arg_deep_copy);
}
