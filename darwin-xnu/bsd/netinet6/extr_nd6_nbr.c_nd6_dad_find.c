
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nd_opt_nonce {int nd_opt_nonce_len; int * nd_opt_nonce; } ;
struct ifaddr {int ifa_ifp; } ;
struct TYPE_4__ {struct dadq* tqe_next; } ;
struct dadq {int dad_ns_lcount; int * dad_nonce; struct ifaddr* dad_ifa; TYPE_1__ dad_list; } ;
struct TYPE_6__ {struct dadq* tqh_first; } ;
struct TYPE_5__ {int ip6s_dad_loopcount; } ;


 int DAD_ADDREF_LOCKED (struct dadq*) ;
 int DAD_LOCK_SPIN (struct dadq*) ;
 int DAD_UNLOCK (struct dadq*) ;
 int IFA_IN6 (struct ifaddr*) ;
 int LOG_ERR ;
 int ND_OPT_NONCE_LEN ;
 int dad6_mutex ;
 TYPE_3__ dadq ;
 int if_name (int ) ;
 int ip6_sprintf (int ) ;
 TYPE_2__ ip6stat ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int nd6log (int ) ;

__attribute__((used)) static struct dadq *
nd6_dad_find(struct ifaddr *ifa, struct nd_opt_nonce *nonce)
{
 struct dadq *dp;

 lck_mtx_lock(dad6_mutex);
 for (dp = dadq.tqh_first; dp; dp = dp->dad_list.tqe_next) {
  DAD_LOCK_SPIN(dp);
  if (dp->dad_ifa != ifa) {
   DAD_UNLOCK(dp);
   continue;
  }






  if (nonce != ((void*)0) &&
      nonce->nd_opt_nonce_len == (ND_OPT_NONCE_LEN + 2) / 8 &&
      memcmp(&nonce->nd_opt_nonce[0], &dp->dad_nonce[0],
      ND_OPT_NONCE_LEN) == 0) {
   nd6log((LOG_ERR, "%s: a looped back NS message is "
       "detected during DAD for %s. Ignoring.\n",
       if_name(ifa->ifa_ifp),
       ip6_sprintf(IFA_IN6(ifa))));
   dp->dad_ns_lcount++;
   ++ip6stat.ip6s_dad_loopcount;
   DAD_UNLOCK(dp);
   continue;
  }

  DAD_ADDREF_LOCKED(dp);
  DAD_UNLOCK(dp);
  break;
 }
 lck_mtx_unlock(dad6_mutex);
 return (dp);
}
