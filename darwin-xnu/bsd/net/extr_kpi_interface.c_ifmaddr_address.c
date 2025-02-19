
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct sockaddr {int dummy; } ;
typedef TYPE_1__* ifmultiaddr_t ;
typedef int errno_t ;
struct TYPE_7__ {scalar_t__ sa_len; } ;
struct TYPE_6__ {TYPE_3__* ifma_addr; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int ENOTSUP ;
 int IFMA_LOCK (TYPE_1__*) ;
 int IFMA_UNLOCK (TYPE_1__*) ;
 int bcopy (TYPE_3__*,struct sockaddr*,scalar_t__) ;

errno_t
ifmaddr_address(ifmultiaddr_t ifma, struct sockaddr *out_addr,
    u_int32_t addr_size)
{
 u_int32_t copylen;

 if (ifma == ((void*)0) || out_addr == ((void*)0))
  return (EINVAL);

 IFMA_LOCK(ifma);
 if (ifma->ifma_addr == ((void*)0)) {
  IFMA_UNLOCK(ifma);
  return (ENOTSUP);
 }

 copylen = (addr_size >= ifma->ifma_addr->sa_len ?
     ifma->ifma_addr->sa_len : addr_size);
 bcopy(ifma->ifma_addr, out_addr, copylen);

 if (ifma->ifma_addr->sa_len > addr_size) {
  IFMA_UNLOCK(ifma);
  return (EMSGSIZE);
 }
 IFMA_UNLOCK(ifma);
 return (0);
}
