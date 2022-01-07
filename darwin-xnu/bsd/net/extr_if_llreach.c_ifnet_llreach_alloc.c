
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int64_t ;
typedef void* u_int16_t ;
struct timeval {int tv_sec; } ;
struct ifnet {int if_llreach_lock; int if_ll_srcs; } ;
struct TYPE_2__ {int addr; void* proto; } ;
struct if_llreach {int lr_reqcnt; int lr_basereachable; int lr_npm; int lr_lqm; int lr_rssi; TYPE_1__ lr_key; struct ifnet* lr_ifp; int lr_debug; int lr_reachable; int lr_basecal; void* lr_lastrcvd; void* lr_baseup; } ;


 int IFD_ATTACHED ;
 int IFLR_ADDREF_LOCKED (struct if_llreach*) ;
 int IFLR_LOCK (struct if_llreach*) ;
 int IFLR_UNLOCK (struct if_llreach*) ;
 int IFNET_LQM_THRESH_UNKNOWN ;
 int IFNET_NPM_THRESH_UNKNOWN ;
 int IFNET_RSSI_UNKNOWN ;
 unsigned int IF_LLREACH_MAXLEN ;
 int LCK_RW_ASSERT (int *,int ) ;
 int LCK_RW_ASSERT_EXCLUSIVE ;
 int LL_COMPUTE_RTIME (int) ;
 int M_WAITOK ;
 struct if_llreach* RB_FIND (int ,int *,struct if_llreach*) ;
 int RB_INSERT (int ,int *,struct if_llreach*) ;
 int VERIFY (int) ;
 int bcopy (void*,int *,unsigned int) ;
 int getmicrotime (struct timeval*) ;
 struct if_llreach* iflr_alloc (int ) ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_exclusive (int *) ;
 int lck_rw_lock_shared (int *) ;
 int lck_rw_lock_shared_to_exclusive (int *) ;
 int ll_reach_tree ;
 void* net_uptime () ;

struct if_llreach *
ifnet_llreach_alloc(struct ifnet *ifp, u_int16_t llproto, void *addr,
    unsigned int alen, u_int64_t llreach_base)
{
 struct if_llreach find, *lr;
 struct timeval cnow;

 if (llreach_base == 0)
  return (((void*)0));

 VERIFY(alen == IF_LLREACH_MAXLEN);

 find.lr_key.proto = llproto;
 bcopy(addr, &find.lr_key.addr, IF_LLREACH_MAXLEN);

 lck_rw_lock_shared(&ifp->if_llreach_lock);
 lr = RB_FIND(ll_reach_tree, &ifp->if_ll_srcs, &find);
 if (lr != ((void*)0)) {
found:
  IFLR_LOCK(lr);
  VERIFY(lr->lr_reqcnt >= 1);
  lr->lr_reqcnt++;
  VERIFY(lr->lr_reqcnt != 0);
  IFLR_ADDREF_LOCKED(lr);
  lr->lr_lastrcvd = net_uptime();
  IFLR_UNLOCK(lr);
  lck_rw_done(&ifp->if_llreach_lock);
  return (lr);
 }

 if (!lck_rw_lock_shared_to_exclusive(&ifp->if_llreach_lock))
  lck_rw_lock_exclusive(&ifp->if_llreach_lock);

 LCK_RW_ASSERT(&ifp->if_llreach_lock, LCK_RW_ASSERT_EXCLUSIVE);


 lr = RB_FIND(ll_reach_tree, &ifp->if_ll_srcs, &find);
 if (lr != ((void*)0))
  goto found;

 lr = iflr_alloc(M_WAITOK);
 if (lr == ((void*)0)) {
  lck_rw_done(&ifp->if_llreach_lock);
  return (((void*)0));
 }
 IFLR_LOCK(lr);
 lr->lr_reqcnt++;
 VERIFY(lr->lr_reqcnt == 1);
 IFLR_ADDREF_LOCKED(lr);
 IFLR_ADDREF_LOCKED(lr);
 lr->lr_lastrcvd = net_uptime();
 lr->lr_baseup = lr->lr_lastrcvd;
 getmicrotime(&cnow);
 lr->lr_basecal = cnow.tv_sec;
 lr->lr_basereachable = llreach_base;
 lr->lr_reachable = LL_COMPUTE_RTIME(lr->lr_basereachable * 1000);
 lr->lr_debug |= IFD_ATTACHED;
 lr->lr_ifp = ifp;
 lr->lr_key.proto = llproto;
 bcopy(addr, &lr->lr_key.addr, IF_LLREACH_MAXLEN);
 lr->lr_rssi = IFNET_RSSI_UNKNOWN;
 lr->lr_lqm = IFNET_LQM_THRESH_UNKNOWN;
 lr->lr_npm = IFNET_NPM_THRESH_UNKNOWN;
 RB_INSERT(ll_reach_tree, &ifp->if_ll_srcs, lr);
 IFLR_UNLOCK(lr);
 lck_rw_done(&ifp->if_llreach_lock);

 return (lr);
}
