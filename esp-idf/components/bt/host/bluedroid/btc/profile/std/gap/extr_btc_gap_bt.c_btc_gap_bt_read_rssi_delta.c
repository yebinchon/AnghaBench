
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int address; } ;
struct TYPE_6__ {TYPE_1__ bda; } ;
struct TYPE_7__ {TYPE_2__ read_rssi_delta; } ;
typedef TYPE_3__ btc_gap_bt_args_t ;


 int BTA_DmBleReadRSSI (int ,int ,int ) ;
 int BTA_TRANSPORT_BR_EDR ;
 int btc_gap_bt_read_rssi_delta_cmpl_callback ;

__attribute__((used)) static void btc_gap_bt_read_rssi_delta(btc_gap_bt_args_t *arg)
{
    BTA_DmBleReadRSSI(arg->read_rssi_delta.bda.address, BTA_TRANSPORT_BR_EDR, btc_gap_bt_read_rssi_delta_cmpl_callback);
}
