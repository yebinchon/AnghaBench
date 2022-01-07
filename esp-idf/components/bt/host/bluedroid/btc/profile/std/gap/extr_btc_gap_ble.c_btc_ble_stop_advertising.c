
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_START_STOP_ADV_CMPL_CBACK ;


 int BTA_DmBleBroadcast (int,int *) ;

__attribute__((used)) static void btc_ble_stop_advertising(tBTA_START_STOP_ADV_CMPL_CBACK *stop_adv_cb)
{
    bool stop_adv = 0;

    BTA_DmBleBroadcast(stop_adv, stop_adv_cb);
}
