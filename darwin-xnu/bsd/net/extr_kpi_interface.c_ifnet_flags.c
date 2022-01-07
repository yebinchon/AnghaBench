
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int16_t ;
typedef TYPE_1__* ifnet_t ;
struct TYPE_3__ {int if_flags; } ;



u_int16_t
ifnet_flags(ifnet_t interface)
{
 return ((interface == ((void*)0)) ? 0 : interface->if_flags);
}
