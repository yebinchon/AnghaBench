
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int BT_HDR ;


 int HCI_BLE_WRITE_DEFAULT_DATA_LENGTH ;
 int UINT16_TO_STREAM (int*,int ) ;
 int * make_command (int ,int,int**) ;

__attribute__((used)) static BT_HDR *make_ble_write_suggested_default_data_length(uint16_t SuggestedMaxTxOctets, uint16_t SuggestedMaxTxTime)
{
    uint8_t *stream;
    uint8_t parameter_size = sizeof(uint16_t) + sizeof(uint16_t);
    BT_HDR *packet = make_command(HCI_BLE_WRITE_DEFAULT_DATA_LENGTH, parameter_size, &stream);

    UINT16_TO_STREAM(stream, SuggestedMaxTxOctets);
    UINT16_TO_STREAM(stream, SuggestedMaxTxTime);
    return packet;
}
