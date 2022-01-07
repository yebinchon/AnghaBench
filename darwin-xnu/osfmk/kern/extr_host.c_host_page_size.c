
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int kern_return_t ;
typedef scalar_t__ host_t ;


 scalar_t__ HOST_NULL ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int PAGE_SIZE ;

kern_return_t
host_page_size(host_t host, vm_size_t * out_page_size)
{
 if (host == HOST_NULL)
  return (KERN_INVALID_ARGUMENT);

 *out_page_size = PAGE_SIZE;

 return (KERN_SUCCESS);
}
