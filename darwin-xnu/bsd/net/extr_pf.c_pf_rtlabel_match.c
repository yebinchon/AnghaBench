
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_family; int sin6_len; int sin6_addr; } ;
struct sockaddr_in {int sin_family; int sin_len; int sin_addr; } ;
struct route_in6 {int dummy; } ;
struct route {int ro_dst; } ;
struct pf_addr_wrap {int dummy; } ;
struct pf_addr {int v6addr; int v4addr; } ;
typedef int sa_family_t ;
typedef int ro ;




 int ROUTE_RELEASE (struct route*) ;
 int bzero (struct route*,int) ;
 int rtalloc (struct route*) ;
 struct sockaddr_in* satosin (int *) ;

int
pf_rtlabel_match(struct pf_addr *addr, sa_family_t af, struct pf_addr_wrap *aw)
{
#pragma unused(aw)
 struct sockaddr_in *dst;




 struct route ro;

 int ret = 0;

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


 rtalloc((struct route *)&ro);

 ROUTE_RELEASE(&ro);

 return (ret);
}
