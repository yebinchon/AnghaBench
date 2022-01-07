
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ifnet_t ;
typedef int errno_t ;


 int ifnet_set_lladdr_internal (int ,void const*,size_t,int ,int ) ;

errno_t
ifnet_set_lladdr(ifnet_t interface, const void* lladdr, size_t lladdr_len)
{
 return (ifnet_set_lladdr_internal(interface, lladdr, lladdr_len, 0, 0));
}
