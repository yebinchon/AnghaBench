
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ifnet_t ;
typedef int errno_t ;


 int ifnet_lladdr_copy_bytes_internal (int ,void*,size_t,int *) ;

errno_t
ifnet_lladdr_copy_bytes(ifnet_t interface, void *lladdr, size_t length)
{
 return (ifnet_lladdr_copy_bytes_internal(interface, lladdr, length,
     ((void*)0)));
}
