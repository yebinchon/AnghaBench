
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int BT_HDR ;


 int HCI_BLE_READ_WHITE_LIST_SIZE ;
 int STREAM_TO_UINT8 (int ,int *) ;
 int assert (int ) ;
 int osi_free (int *) ;
 int * read_command_complete_header (int *,int ,int) ;

__attribute__((used)) static void parse_ble_read_white_list_size_response(
    BT_HDR *response,
    uint8_t *white_list_size_ptr)
{

    uint8_t *stream = read_command_complete_header(response, HCI_BLE_READ_WHITE_LIST_SIZE, 1 );
    assert(stream != ((void*)0));
    STREAM_TO_UINT8(*white_list_size_ptr, stream);

    osi_free(response);
}
