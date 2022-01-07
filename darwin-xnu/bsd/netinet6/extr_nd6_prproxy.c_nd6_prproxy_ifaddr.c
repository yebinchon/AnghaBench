
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_7__ {int sin6_addr; } ;
struct nd_prefix {int ndpr_stateflags; TYPE_3__ ndpr_prefix; struct nd_prefix* ndpr_next; } ;
struct TYPE_6__ {int sin6_addr; } ;
struct TYPE_5__ {int sin6_addr; } ;
struct in6_ifaddr {int ia_ifa; int ia_plen; TYPE_2__ ia_prefixmask; TYPE_1__ ia_addr; } ;
struct in6_addr {int dummy; } ;
typedef int pr_mask ;
typedef int boolean_t ;
typedef int addr ;
struct TYPE_8__ {struct nd_prefix* lh_first; } ;


 int FALSE ;
 int IFA_LOCK (int *) ;
 int IFA_UNLOCK (int *) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int NDPRF_ONLINK ;
 int NDPRF_PRPROXY ;
 int NDPR_LOCK (struct nd_prefix*) ;
 int NDPR_UNLOCK (struct nd_prefix*) ;
 int TRUE ;
 int bcopy (int *,struct in6_addr*,int) ;
 scalar_t__ in6_are_prefix_equal (int *,struct in6_addr*,int ) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int nd6_mutex ;
 TYPE_4__ nd_prefix ;

boolean_t
nd6_prproxy_ifaddr(struct in6_ifaddr *ia)
{
 struct nd_prefix *pr;
 struct in6_addr addr, pr_mask;
 u_int32_t pr_len;
 boolean_t proxied = FALSE;

 LCK_MTX_ASSERT(nd6_mutex, LCK_MTX_ASSERT_NOTOWNED);

 IFA_LOCK(&ia->ia_ifa);
 bcopy(&ia->ia_addr.sin6_addr, &addr, sizeof (addr));
 bcopy(&ia->ia_prefixmask.sin6_addr, &pr_mask, sizeof (pr_mask));
 pr_len = ia->ia_plen;
 IFA_UNLOCK(&ia->ia_ifa);

 lck_mtx_lock(nd6_mutex);
 for (pr = nd_prefix.lh_first; pr; pr = pr->ndpr_next) {
  NDPR_LOCK(pr);
  if ((pr->ndpr_stateflags & NDPRF_ONLINK) &&
      (pr->ndpr_stateflags & NDPRF_PRPROXY) &&
      in6_are_prefix_equal(&pr->ndpr_prefix.sin6_addr,
      &addr, pr_len)) {
   NDPR_UNLOCK(pr);
   proxied = TRUE;
   break;
  }
  NDPR_UNLOCK(pr);
 }
 lck_mtx_unlock(nd6_mutex);

 return (proxied);
}
