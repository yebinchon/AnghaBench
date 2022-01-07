
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_2__ {int (* get_acl_packet_size_ble ) () ;} ;


 TYPE_1__* controller_get_interface () ;
 int stub1 () ;

UINT16 BTU_BleAclPktSize(void)
{

    return controller_get_interface()->get_acl_packet_size_ble();



}
