
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet_init_params {int dummy; } ;
typedef int ifnet_t ;
typedef int errno_t ;


 int ifnet_allocate_common (struct ifnet_init_params const*,int *,int) ;

errno_t
ifnet_allocate_internal(const struct ifnet_init_params *init, ifnet_t *ifp)
{
 return (ifnet_allocate_common(init, ifp, 1));
}
