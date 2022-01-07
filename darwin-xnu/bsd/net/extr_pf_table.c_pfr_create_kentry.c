
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sin6; int sin; } ;
struct pfr_kentry {scalar_t__ pfrke_af; int pfrke_intrpool; int pfrke_not; int pfrke_net; TYPE_1__ pfrke_sa; } ;
struct pfr_addr {scalar_t__ pfra_af; int pfra_not; int pfra_net; int pfra_ip6addr; int pfra_ip4addr; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int FILLIN_SIN (int ,int ) ;
 int FILLIN_SIN6 (int ,int ) ;
 int PR_WAITOK ;
 int bzero (struct pfr_kentry*,int) ;
 int pfr_kentry_pl ;
 int pfr_kentry_pl2 ;
 struct pfr_kentry* pool_get (int *,int ) ;

__attribute__((used)) static struct pfr_kentry *
pfr_create_kentry(struct pfr_addr *ad, int intr)
{
 struct pfr_kentry *ke;

 if (intr)
  ke = pool_get(&pfr_kentry_pl2, PR_WAITOK);
 else
  ke = pool_get(&pfr_kentry_pl, PR_WAITOK);
 if (ke == ((void*)0))
  return (((void*)0));
 bzero(ke, sizeof (*ke));

 if (ad->pfra_af == AF_INET)
  FILLIN_SIN(ke->pfrke_sa.sin, ad->pfra_ip4addr);
 else if (ad->pfra_af == AF_INET6)
  FILLIN_SIN6(ke->pfrke_sa.sin6, ad->pfra_ip6addr);
 ke->pfrke_af = ad->pfra_af;
 ke->pfrke_net = ad->pfra_net;
 ke->pfrke_not = ad->pfra_not;
 ke->pfrke_intrpool = intr;
 return (ke);
}
