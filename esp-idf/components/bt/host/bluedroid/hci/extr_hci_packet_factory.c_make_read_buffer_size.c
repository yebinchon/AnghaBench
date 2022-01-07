
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BT_HDR ;


 int HCI_READ_BUFFER_SIZE ;
 int * make_command_no_params (int ) ;

__attribute__((used)) static BT_HDR *make_read_buffer_size(void)
{
    return make_command_no_params(HCI_READ_BUFFER_SIZE);
}
