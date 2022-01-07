
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ifnet_t ;
typedef int errno_t ;
typedef int boolean_t ;
struct TYPE_3__ {int if_xflags; } ;


 int EINVAL ;
 int IFXF_LOW_POWER ;

errno_t
ifnet_get_low_power_mode(ifnet_t ifp, boolean_t *on)
{
 if (ifp == ((void*)0) || on == ((void*)0))
  return (EINVAL);

 *on = !!(ifp->if_xflags & IFXF_LOW_POWER);

 return (0);
}
