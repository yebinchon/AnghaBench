
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
typedef TYPE_1__* ifnet_t ;
struct TYPE_3__ {int if_generation; } ;



u_int32_t
ifnet_get_generation(ifnet_t interface)
{
 return (interface->if_generation);
}
