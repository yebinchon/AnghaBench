
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t tunnel_interface_index; } ;
typedef TYPE_1__ necp_kernel_policy_result_parameter ;
typedef int * ifnet_t ;


 int ** ifindex2ifnet ;

ifnet_t
necp_get_ifnet_from_result_parameter(necp_kernel_policy_result_parameter *result_parameter)
{
 if (result_parameter == ((void*)0)) {
  return (((void*)0));
 }

 return (ifindex2ifnet[result_parameter->tunnel_interface_index]);
}
