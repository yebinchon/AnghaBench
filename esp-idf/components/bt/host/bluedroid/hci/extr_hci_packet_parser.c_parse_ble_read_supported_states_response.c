
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int BT_HDR ;


 int HCI_BLE_READ_SUPPORTED_STATES ;
 int STREAM_TO_ARRAY (int *,int *,int) ;
 int assert (int ) ;
 int osi_free (int *) ;
 int * read_command_complete_header (int *,int ,size_t) ;

__attribute__((used)) static void parse_ble_read_supported_states_response(
    BT_HDR *response,
    uint8_t *supported_states,
    size_t supported_states_size)
{

    uint8_t *stream = read_command_complete_header(response, HCI_BLE_READ_SUPPORTED_STATES, supported_states_size );
    assert(stream != ((void*)0));
    STREAM_TO_ARRAY(supported_states, stream, (int)supported_states_size);

    osi_free(response);
}
