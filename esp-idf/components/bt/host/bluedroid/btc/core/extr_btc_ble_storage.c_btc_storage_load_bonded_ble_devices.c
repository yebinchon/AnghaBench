
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bt_status_t ;


 int BTC_TRACE_DEBUG (char*,int ) ;
 int btc_storage_in_fetch_bonded_ble_devices (int) ;

bt_status_t btc_storage_load_bonded_ble_devices(void)
{
    bt_status_t status;
    status = btc_storage_in_fetch_bonded_ble_devices(1);
    BTC_TRACE_DEBUG("Storage load rslt %d\n", status);
    return status;
}
