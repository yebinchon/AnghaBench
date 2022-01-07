
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int address; } ;
typedef TYPE_1__ bt_bdaddr_t ;
typedef int BT_HDR ;


 int HCI_READ_BD_ADDR ;
 int STREAM_TO_BDADDR (int ,int *) ;
 int assert (int ) ;
 int osi_free (int *) ;
 int * read_command_complete_header (int *,int ,int) ;

__attribute__((used)) static void parse_read_bd_addr_response(
    BT_HDR *response,
    bt_bdaddr_t *address_ptr)
{

    uint8_t *stream = read_command_complete_header(response, HCI_READ_BD_ADDR, sizeof(bt_bdaddr_t) );
    assert(stream != ((void*)0));
    STREAM_TO_BDADDR(address_ptr->address, stream);

    osi_free(response);
}
