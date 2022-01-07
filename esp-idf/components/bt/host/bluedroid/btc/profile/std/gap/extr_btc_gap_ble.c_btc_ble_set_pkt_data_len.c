
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int tBTA_SET_PKT_DATA_LENGTH_CBACK ;
typedef int BD_ADDR ;


 int BTA_DmBleSetDataLength (int ,scalar_t__,int *) ;
 scalar_t__ BTM_BLE_DATA_SIZE_MAX ;
 scalar_t__ BTM_BLE_DATA_SIZE_MIN ;

__attribute__((used)) static void btc_ble_set_pkt_data_len(BD_ADDR remote_device, uint16_t tx_data_length, tBTA_SET_PKT_DATA_LENGTH_CBACK *p_set_pkt_data_cback)
{
    if (tx_data_length > BTM_BLE_DATA_SIZE_MAX) {
        tx_data_length = BTM_BLE_DATA_SIZE_MAX;
    } else if (tx_data_length < BTM_BLE_DATA_SIZE_MIN) {
        tx_data_length = BTM_BLE_DATA_SIZE_MIN;
    }

    BTA_DmBleSetDataLength(remote_device, tx_data_length, p_set_pkt_data_cback);
}
