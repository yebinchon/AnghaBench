
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kernel_version_t ;
typedef int kern_return_t ;
typedef scalar_t__ host_t ;


 scalar_t__ HOST_NULL ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int strncpy (int ,int ,int) ;
 int version ;

kern_return_t
host_kernel_version(host_t host, kernel_version_t out_version)
{
 if (host == HOST_NULL)
  return (KERN_INVALID_ARGUMENT);

 (void)strncpy(out_version, version, sizeof(kernel_version_t));

 return (KERN_SUCCESS);
}
