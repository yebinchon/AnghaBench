
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int BT_HDR ;


 int HCI_READ_LOCAL_SUPPORTED_CMDS ;
 int STREAM_TO_ARRAY (int *,int *,int) ;
 int assert (int ) ;
 int osi_free (int *) ;
 int * read_command_complete_header (int *,int ,size_t) ;

__attribute__((used)) static void parse_read_local_supported_commands_response(
    BT_HDR *response,
    uint8_t *supported_commands_ptr,
    size_t supported_commands_length)
{

    uint8_t *stream = read_command_complete_header(response, HCI_READ_LOCAL_SUPPORTED_CMDS, supported_commands_length );
    assert(stream != ((void*)0));
    STREAM_TO_ARRAY(supported_commands_ptr, stream, (int)supported_commands_length);

    osi_free(response);
}
