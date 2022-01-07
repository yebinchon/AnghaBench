
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ifnet_t ;
typedef int errno_t ;
typedef int boolean_t ;
struct TYPE_3__ {int if_eflags; } ;


 int EINVAL ;
 int IFEF_QOSMARKING_CAPABLE ;

errno_t
ifnet_get_fastlane_capable(ifnet_t interface, boolean_t *capable)
{
 if (interface == ((void*)0) || capable == ((void*)0))
  return (EINVAL);
 if (interface->if_eflags & IFEF_QOSMARKING_CAPABLE)
  *capable = 1;
 else
  *capable = 0;
 return (0);
}
