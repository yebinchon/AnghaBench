
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct sockaddr {int dummy; } ;
struct ifmultiaddr {int dummy; } ;
typedef TYPE_1__* ifmultiaddr_t ;
typedef int errno_t ;
struct TYPE_3__ {struct ifmultiaddr* ifma_ll; } ;


 int EINVAL ;
 int ENOTSUP ;
 int ifmaddr_address (struct ifmultiaddr*,struct sockaddr*,int ) ;

errno_t
ifmaddr_lladdress(ifmultiaddr_t ifma, struct sockaddr *out_addr,
    u_int32_t addr_size)
{
 struct ifmultiaddr *ifma_ll;

 if (ifma == ((void*)0) || out_addr == ((void*)0))
  return (EINVAL);
 if ((ifma_ll = ifma->ifma_ll) == ((void*)0))
  return (ENOTSUP);

 return (ifmaddr_address(ifma_ll, out_addr, addr_size));
}
