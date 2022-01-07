
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ifnet_t ;
typedef int ifnet_offload_t ;
struct TYPE_3__ {int if_hwassist; } ;


 int offload_mask ;

ifnet_offload_t
ifnet_offload(ifnet_t interface)
{
 return ((interface == ((void*)0)) ?
     0 : (interface->if_hwassist & offload_mask));
}
