
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BT_HDR ;


 int HCI_BLE_READ_DEFAULT_DATA_LENGTH ;
 int * make_command_no_params (int ) ;

__attribute__((used)) static BT_HDR *make_ble_read_suggested_default_data_length(void)
{
    return make_command_no_params(HCI_BLE_READ_DEFAULT_DATA_LENGTH);
}
