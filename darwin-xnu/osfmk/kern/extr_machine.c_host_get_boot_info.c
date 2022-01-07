
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const* kernel_boot_info_t ;
typedef int kern_return_t ;
typedef int * host_priv_t ;


 int * HOST_PRIV_NULL ;
 int KERNEL_BOOT_INFO_MAX ;
 int KERN_INVALID_HOST ;
 int KERN_SUCCESS ;
 int assert (int) ;
 char* machine_boot_info (char const*,int ) ;
 int realhost ;
 int strncpy (char const*,char const*,int ) ;

kern_return_t
host_get_boot_info(
        host_priv_t host_priv,
        kernel_boot_info_t boot_info)
{
 const char *src = "";
 if (host_priv == HOST_PRIV_NULL)
  return (KERN_INVALID_HOST);

 assert(host_priv == &realhost);





 src = machine_boot_info(boot_info, KERNEL_BOOT_INFO_MAX);
 if (src != boot_info)
  (void) strncpy(boot_info, src, KERNEL_BOOT_INFO_MAX);

 return (KERN_SUCCESS);
}
