
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ifnet_t ;
struct TYPE_3__ {int if_generation; } ;


 int OSIncrementAtomic (int *) ;

void
ifnet_increment_generation(ifnet_t interface)
{
 OSIncrementAtomic(&interface->if_generation);
}
