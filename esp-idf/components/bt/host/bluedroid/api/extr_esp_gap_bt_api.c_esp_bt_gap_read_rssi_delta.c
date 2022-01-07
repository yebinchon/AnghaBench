
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int esp_err_t ;
typedef int esp_bd_addr_t ;
struct TYPE_9__ {int act; int pid; int sig; } ;
typedef TYPE_3__ btc_msg_t ;
struct TYPE_7__ {int address; } ;
struct TYPE_8__ {TYPE_1__ bda; } ;
struct TYPE_10__ {TYPE_2__ read_rssi_delta; } ;
typedef TYPE_4__ btc_gap_bt_args_t ;


 int BTC_GAP_BT_ACT_READ_RSSI_DELTA ;
 int BTC_PID_GAP_BT ;
 int BTC_SIG_API_CALL ;
 scalar_t__ BT_STATUS_SUCCESS ;
 int ESP_FAIL ;
 int ESP_OK ;
 scalar_t__ btc_transfer_context (TYPE_3__*,TYPE_4__*,int,int *) ;
 int memcpy (int ,int ,int) ;

esp_err_t esp_bt_gap_read_rssi_delta(esp_bd_addr_t remote_addr)
{
    btc_msg_t msg;
    btc_gap_bt_args_t arg;
    msg.sig = BTC_SIG_API_CALL;
    msg.pid = BTC_PID_GAP_BT;
    msg.act = BTC_GAP_BT_ACT_READ_RSSI_DELTA;
    memcpy(arg.read_rssi_delta.bda.address, remote_addr, sizeof(esp_bd_addr_t));

    return (btc_transfer_context(&msg, &arg, sizeof(btc_gap_bt_args_t), ((void*)0)) == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}
