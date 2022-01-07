
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ifnet_t ;
typedef int errno_t ;
struct TYPE_3__ {int if_lastupdown; } ;


 int EINVAL ;
 int TOUCHLASTCHANGE (int *) ;

errno_t
ifnet_touch_lastupdown(ifnet_t interface)
{
 if (interface == ((void*)0)) {
  return (EINVAL);
 }

 TOUCHLASTCHANGE(&interface->if_lastupdown);

 return (0);
}
