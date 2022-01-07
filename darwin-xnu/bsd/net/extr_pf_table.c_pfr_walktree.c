
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radix_node {int dummy; } ;
struct pfr_walktree {int pfrw_flags; int pfrw_op; int pfrw_addr; int pfrw_astats; TYPE_1__* pfrw_dyn; struct pfr_kentry* pfrw_kentry; int pfrw_cnt; int pfrw_free; int pfrw_workq; } ;
struct pfr_kentry {int pfrke_sa; int pfrke_net; int pfrke_af; int pfrke_not; int pfrke_tzero; int pfrke_bytes; int pfrke_packets; int pfrke_mark; } ;
struct pfr_addr {int dummy; } ;
struct pfr_astats {int pfras_tzero; int pfras_bytes; int pfras_packets; int _pad; struct pfr_addr pfras_a; } ;
typedef int as ;
typedef int ad ;
struct TYPE_2__ {void* pfid_mask6; void* pfid_addr6; int pfid_acnt6; void* pfid_mask4; void* pfid_addr4; int pfid_acnt4; } ;


 int AF_INET ;
 int AF_INET6 ;
 int COPYOUT (struct pfr_astats*,int,int,int) ;
 int EFAULT ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;







 int SLIST_INSERT_HEAD (int ,struct pfr_kentry*,int ) ;
 void** SUNION2PF (int *,int ) ;
 int bcopy (int ,int ,int) ;
 int copyout (struct pfr_addr*,int,int) ;
 int pf_lock ;
 int pfr_copyout_addr (struct pfr_addr*,struct pfr_kentry*) ;
 int pfr_mask ;
 int pfr_prepare_network (int *,int ,int ) ;
 int pfrke_workq ;

__attribute__((used)) static int
pfr_walktree(struct radix_node *rn, void *arg)
{
 struct pfr_kentry *ke = (struct pfr_kentry *)rn;
 struct pfr_walktree *w = arg;
 int flags = w->pfrw_flags;

 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 switch (w->pfrw_op) {
 case 130:
  ke->pfrke_mark = 0;
  break;
 case 128:
  if (ke->pfrke_mark)
   break;

 case 133:
  SLIST_INSERT_HEAD(w->pfrw_workq, ke, pfrke_workq);
  w->pfrw_cnt++;
  break;
 case 132:
  if (w->pfrw_free-- > 0) {
   struct pfr_addr ad;

   pfr_copyout_addr(&ad, ke);
   if (copyout(&ad, w->pfrw_addr, sizeof (ad)))
    return (EFAULT);
   w->pfrw_addr += sizeof (ad);
  }
  break;
 case 131:
  if (w->pfrw_free-- > 0) {
   struct pfr_astats as;

   pfr_copyout_addr(&as.pfras_a, ke);






   bcopy(ke->pfrke_packets, as.pfras_packets,
       sizeof (as.pfras_packets));
   bcopy(ke->pfrke_bytes, as.pfras_bytes,
       sizeof (as.pfras_bytes));
   as.pfras_tzero = ke->pfrke_tzero;

   if (COPYOUT(&as, w->pfrw_astats, sizeof (as), flags))
    return (EFAULT);
   w->pfrw_astats += sizeof (as);
  }
  break;
 case 129:
  if (ke->pfrke_not)
   break;
  if (!w->pfrw_cnt--) {
   w->pfrw_kentry = ke;
   return (1);
  }
  break;
 case 134:
  if (ke->pfrke_af == AF_INET) {
   if (w->pfrw_dyn->pfid_acnt4++ > 0)
    break;
   pfr_prepare_network(&pfr_mask, AF_INET, ke->pfrke_net);
   w->pfrw_dyn->pfid_addr4 = *SUNION2PF(
       &ke->pfrke_sa, AF_INET);
   w->pfrw_dyn->pfid_mask4 = *SUNION2PF(
       &pfr_mask, AF_INET);
  } else if (ke->pfrke_af == AF_INET6) {
   if (w->pfrw_dyn->pfid_acnt6++ > 0)
    break;
   pfr_prepare_network(&pfr_mask, AF_INET6, ke->pfrke_net);
   w->pfrw_dyn->pfid_addr6 = *SUNION2PF(
       &ke->pfrke_sa, AF_INET6);
   w->pfrw_dyn->pfid_mask6 = *SUNION2PF(
       &pfr_mask, AF_INET6);
  }
  break;
 }
 return (0);
}
