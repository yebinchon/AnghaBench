
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ifnet_t ;
typedef int ifaddr_t ;
typedef int errno_t ;


 int EINVAL ;
 int M_NOWAIT ;
 int ifnet_get_address_list_family_internal (int ,int **,int ,int ,int ,int) ;

errno_t
ifnet_get_inuse_address_list(ifnet_t interface, ifaddr_t **addresses)
{
 return (addresses == ((void*)0) ? EINVAL :
  ifnet_get_address_list_family_internal(interface, addresses,
  0, 0, M_NOWAIT, 1));
}
