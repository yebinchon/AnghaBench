
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ifnet_t ;
typedef int ifnet_family_t ;
struct TYPE_3__ {int if_family; } ;



ifnet_family_t
ifnet_family(ifnet_t interface)
{
 return ((interface == ((void*)0)) ? 0 : interface->if_family);
}
