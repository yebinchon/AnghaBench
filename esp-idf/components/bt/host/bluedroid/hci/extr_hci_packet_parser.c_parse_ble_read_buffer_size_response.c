
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int BT_HDR ;


 int HCI_BLE_READ_BUFFER_SIZE ;
 int STREAM_TO_UINT16 (int ,int *) ;
 int STREAM_TO_UINT8 (int ,int *) ;
 int assert (int ) ;
 int osi_free (int *) ;
 int * read_command_complete_header (int *,int ,int) ;

__attribute__((used)) static void parse_ble_read_buffer_size_response(
    BT_HDR *response,
    uint16_t *data_size_ptr,
    uint8_t *acl_buffer_count_ptr)
{

    uint8_t *stream = read_command_complete_header(response, HCI_BLE_READ_BUFFER_SIZE, 3 );
    assert(stream != ((void*)0));
    STREAM_TO_UINT16(*data_size_ptr, stream);
    STREAM_TO_UINT8(*acl_buffer_count_ptr, stream);

    osi_free(response);
}
