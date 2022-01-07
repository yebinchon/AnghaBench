
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_family; int sin6_len; int sin6_addr; } ;
struct sockaddr_in {int sin_family; int sin_len; int sin_addr; } ;
struct route_in6 {int dummy; } ;
struct route {int ro_dst; } ;
struct pfi_kif {TYPE_1__* pfik_ifp; } ;
struct pf_addr {int v6addr; int v4addr; } ;
typedef int sa_family_t ;
typedef int ro ;
struct TYPE_2__ {scalar_t__ if_type; } ;




 scalar_t__ IFT_ENC ;
 int ROUTE_RELEASE (struct route*) ;
 int bzero (struct route*,int) ;
 int rtalloc (struct route*) ;
 struct sockaddr_in* satosin (int *) ;

int
pf_routable(struct pf_addr *addr, sa_family_t af, struct pfi_kif *kif)
{
#pragma unused(kif)
 struct sockaddr_in *dst;
 int ret = 1;




 struct route ro;


 bzero(&ro, sizeof (ro));
 switch (af) {
 case 129:
  dst = satosin(&ro.ro_dst);
  dst->sin_family = 129;
  dst->sin_len = sizeof (*dst);
  dst->sin_addr = addr->v4addr;
  break;
 default:
  return (0);
 }



 if (kif != ((void*)0) && kif->pfik_ifp->if_type == IFT_ENC)
  goto out;


 rtalloc((struct route *)&ro);

out:
 ROUTE_RELEASE(&ro);
 return (ret);
}
