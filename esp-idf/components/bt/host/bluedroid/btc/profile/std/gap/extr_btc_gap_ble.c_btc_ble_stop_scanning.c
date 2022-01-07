
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int tBTA_START_STOP_SCAN_CMPL_CBACK ;


 int BTA_DmBleScan (int,int ,int *,int *) ;

__attribute__((used)) static void btc_ble_stop_scanning(tBTA_START_STOP_SCAN_CMPL_CBACK *stop_scan_cb)
{
    uint8_t duration = 0;
    BTA_DmBleScan(0, duration, ((void*)0), stop_scan_cb);
}
