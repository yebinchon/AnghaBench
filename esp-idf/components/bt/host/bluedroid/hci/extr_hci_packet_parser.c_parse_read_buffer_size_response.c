
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int BT_HDR ;


 int HCI_READ_BUFFER_SIZE ;
 int STREAM_TO_UINT16 (int ,int *) ;
 int STREAM_TO_UINT8 (int ,int *) ;
 int assert (int ) ;
 int osi_free (int *) ;
 int * read_command_complete_header (int *,int ,int) ;

__attribute__((used)) static void parse_read_buffer_size_response(
    BT_HDR *response,
    uint16_t *acl_data_size_ptr,
    uint16_t *acl_buffer_count_ptr,
    uint8_t *sco_data_size_ptr,
    uint16_t *sco_buffer_count_ptr)
{

    uint8_t *stream = read_command_complete_header(response, HCI_READ_BUFFER_SIZE, 7 );
    assert(stream != ((void*)0));
    STREAM_TO_UINT16(*acl_data_size_ptr, stream);
    STREAM_TO_UINT8(*sco_data_size_ptr, stream);
    STREAM_TO_UINT16(*acl_buffer_count_ptr, stream);
    STREAM_TO_UINT16(*sco_buffer_count_ptr, stream);
    osi_free(response);
}
