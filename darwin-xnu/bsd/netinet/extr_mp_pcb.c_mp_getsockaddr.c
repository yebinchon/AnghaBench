
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {scalar_t__ sa_family; } ;
struct mptses {TYPE_1__ mpte_src; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int EINVAL ;
 int mp_getaddr_v4 (struct socket*,struct sockaddr**,int) ;
 int mp_getaddr_v6 (struct socket*,struct sockaddr**,int) ;
 struct mptses* mpsotompte (struct socket*) ;

int
mp_getsockaddr(struct socket *mp_so, struct sockaddr **nam)
{
 struct mptses *mpte = mpsotompte(mp_so);

 if (mpte->mpte_src.sa_family == AF_INET || mpte->mpte_src.sa_family == 0)
  return mp_getaddr_v4(mp_so, nam, 0);
 else if (mpte->mpte_src.sa_family == AF_INET6)
  return mp_getaddr_v6(mp_so, nam, 0);
 else
  return (EINVAL);
}
