
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int BT_HDR ;


 int HCI_BLE_READ_DEFAULT_DATA_LENGTH ;
 int STREAM_TO_UINT16 (int ,int *) ;
 int osi_free (int *) ;
 int * read_command_complete_header (int *,int ,int) ;

__attribute__((used)) static void parse_ble_read_suggested_default_data_length_response(
    BT_HDR *response,
    uint16_t *ble_default_packet_length_ptr,
    uint16_t *ble_default_packet_txtime_ptr)
{

    uint8_t *stream = read_command_complete_header(response, HCI_BLE_READ_DEFAULT_DATA_LENGTH, 2 );
    STREAM_TO_UINT16(*ble_default_packet_length_ptr, stream);
    STREAM_TO_UINT16(*ble_default_packet_txtime_ptr, stream);
    osi_free(response);
}
