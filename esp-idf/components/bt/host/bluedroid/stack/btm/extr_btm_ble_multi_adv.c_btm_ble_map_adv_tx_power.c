
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTM_BLE_ADV_TX_POWER_MAX ;
 scalar_t__* btm_ble_tx_power ;

char btm_ble_map_adv_tx_power(int tx_power_index)
{
    if (0 <= tx_power_index && tx_power_index <= BTM_BLE_ADV_TX_POWER_MAX) {
        return (char)btm_ble_tx_power[tx_power_index];
    }
    return 0;
}
