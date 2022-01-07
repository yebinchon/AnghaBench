
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_2__ {scalar_t__ acl_data_size_ble; int readable; } ;


 scalar_t__ HCI_DATA_PREAMBLE_SIZE ;
 int assert (int ) ;
 TYPE_1__ controller_param ;

__attribute__((used)) static uint16_t get_acl_packet_size_ble(void)
{
    assert(controller_param.readable);
    return controller_param.acl_data_size_ble + HCI_DATA_PREAMBLE_SIZE;
}
