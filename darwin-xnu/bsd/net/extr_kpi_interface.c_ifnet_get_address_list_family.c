
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sa_family_t ;
typedef int ifnet_t ;
typedef int ifaddr_t ;
typedef int errno_t ;


 int M_NOWAIT ;
 int ifnet_get_address_list_family_internal (int ,int **,int ,int ,int ,int ) ;

errno_t
ifnet_get_address_list_family(ifnet_t interface, ifaddr_t **addresses,
    sa_family_t family)
{
 return (ifnet_get_address_list_family_internal(interface, addresses,
     family, 0, M_NOWAIT, 0));
}
