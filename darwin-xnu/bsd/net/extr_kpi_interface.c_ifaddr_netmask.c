
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct sockaddr {int dummy; } ;
typedef TYPE_1__* ifaddr_t ;
typedef int errno_t ;
struct TYPE_7__ {scalar_t__ sa_len; } ;
struct TYPE_6__ {TYPE_3__* ifa_netmask; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int ENOTSUP ;
 int IFA_LOCK_SPIN (TYPE_1__*) ;
 int IFA_UNLOCK (TYPE_1__*) ;
 int bcopy (TYPE_3__*,struct sockaddr*,scalar_t__) ;

errno_t
ifaddr_netmask(ifaddr_t ifa, struct sockaddr *out_addr, u_int32_t addr_size)
{
 u_int32_t copylen;

 if (ifa == ((void*)0) || out_addr == ((void*)0))
  return (EINVAL);

 IFA_LOCK_SPIN(ifa);
 if (ifa->ifa_netmask == ((void*)0)) {
  IFA_UNLOCK(ifa);
  return (ENOTSUP);
 }

 copylen = addr_size >= ifa->ifa_netmask->sa_len ?
     ifa->ifa_netmask->sa_len : addr_size;
 bcopy(ifa->ifa_netmask, out_addr, copylen);

 if (ifa->ifa_netmask->sa_len > addr_size) {
  IFA_UNLOCK(ifa);
  return (EMSGSIZE);
 }

 IFA_UNLOCK(ifa);
 return (0);
}
