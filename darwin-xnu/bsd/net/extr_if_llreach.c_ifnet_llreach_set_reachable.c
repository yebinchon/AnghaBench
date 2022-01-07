
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int16_t ;
struct ifnet {int if_llreach_lock; int if_ll_srcs; } ;
struct TYPE_2__ {int addr; int proto; } ;
struct if_llreach {int lr_lastrcvd; TYPE_1__ lr_key; } ;


 unsigned int IF_LLREACH_MAXLEN ;
 struct if_llreach* RB_FIND (int ,int *,struct if_llreach*) ;
 int VERIFY (int) ;
 int bcopy (void*,int *,unsigned int) ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_shared (int *) ;
 int ll_reach_tree ;
 int net_uptime () ;

void
ifnet_llreach_set_reachable(struct ifnet *ifp, u_int16_t llproto, void *addr,
    unsigned int alen)
{
 struct if_llreach find, *lr;

 VERIFY(alen == IF_LLREACH_MAXLEN);

 find.lr_key.proto = llproto;
 bcopy(addr, &find.lr_key.addr, IF_LLREACH_MAXLEN);

 lck_rw_lock_shared(&ifp->if_llreach_lock);
 lr = RB_FIND(ll_reach_tree, &ifp->if_ll_srcs, &find);
 if (lr == ((void*)0)) {
  lck_rw_done(&ifp->if_llreach_lock);
  return;
 }



 lr->lr_lastrcvd = net_uptime();
 lck_rw_done(&ifp->if_llreach_lock);
}
