
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * ifnet_t ;
typedef int errno_t ;
typedef scalar_t__ boolean_t ;


 int EINVAL ;
 int IFRTYPE_QOSMARKING_FASTLANE ;
 int IFRTYPE_QOSMARKING_MODE_NONE ;
 int if_set_qosmarking_mode (int *,int ) ;

errno_t
ifnet_set_fastlane_capable(ifnet_t interface, boolean_t capable)
{
 if (interface == ((void*)0))
  return (EINVAL);

 if_set_qosmarking_mode(interface,
     capable ? IFRTYPE_QOSMARKING_FASTLANE : IFRTYPE_QOSMARKING_MODE_NONE);

 return (0);
}
