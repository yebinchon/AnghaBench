
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * s6_addr32; } ;
struct TYPE_4__ {TYPE_2__ sin6_addr; } ;
struct TYPE_6__ {int * s6_addr32; } ;
struct nd_prefix {int ndpr_stateflags; int ndpr_plen; TYPE_1__ ndpr_prefix; struct ifnet* ndpr_ifp; scalar_t__ ndpr_raf_onlink; int ndpr_debug; TYPE_3__ ndpr_mask; int ndpr_advrtrs; int ndpr_lastupdate; int ndpr_flags; int ndpr_pltime; int ndpr_vltime; } ;
struct nd_ifinfo {scalar_t__ initialized; scalar_t__ nprefixes; int lock; } ;
struct nd_defrouter {int dummy; } ;
struct ifnet {int if_index; } ;
typedef scalar_t__ boolean_t ;


 int ENOMEM ;
 int IFD_ATTACHED ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,struct nd_prefix*,int ) ;
 int LOG_ERR ;
 int M_WAITOK ;
 int NDPRF_STATIC ;
 int NDPR_ADDREF (struct nd_prefix*) ;
 int NDPR_ADDREF_LOCKED (struct nd_prefix*) ;
 int NDPR_LOCK (struct nd_prefix*) ;
 int NDPR_UNLOCK (struct nd_prefix*) ;
 struct nd_ifinfo* ND_IFINFO (struct ifnet*) ;
 scalar_t__ TRUE ;
 int VERIFY (int) ;
 int if_name (struct ifnet*) ;
 int in6_init_prefix_ltimes (struct nd_prefix*) ;
 int in6_prefixlen2mask (TYPE_3__*,int ) ;
 scalar_t__ ip6_maxifprefixes ;
 int ip6_sprintf (TYPE_2__*) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int * nd6_mutex ;
 int nd6_prefix_onlink_common (struct nd_prefix*,scalar_t__,int ) ;
 int nd6_sched_timeout_want ;
 int nd6log (int ) ;
 int nd_prefix ;
 struct nd_prefix* ndpr_alloc (int ) ;
 int ndpr_entry ;
 int ndpr_free (struct nd_prefix*) ;
 int net_uptime () ;
 int pfxrtr_add (struct nd_prefix*,struct nd_defrouter*) ;

int
nd6_prelist_add(struct nd_prefix *pr, struct nd_defrouter *dr,
    struct nd_prefix **newp, boolean_t force_scoped)
{
 struct nd_prefix *new = ((void*)0);
 struct ifnet *ifp = pr->ndpr_ifp;
 struct nd_ifinfo *ndi = ((void*)0);
 int i, error;

 if (ip6_maxifprefixes >= 0) {
  ndi = ND_IFINFO(ifp);
  VERIFY((((void*)0) != ndi) && (TRUE == ndi->initialized));
  lck_mtx_lock(&ndi->lock);
  if (ndi->nprefixes >= ip6_maxifprefixes) {
   lck_mtx_unlock(&ndi->lock);
   return (ENOMEM);
  }
  lck_mtx_unlock(&ndi->lock);
 }

 new = ndpr_alloc(M_WAITOK);
 if (new == ((void*)0))
  return (ENOMEM);

 NDPR_LOCK(new);
 NDPR_LOCK(pr);
 new->ndpr_ifp = pr->ndpr_ifp;
 new->ndpr_prefix = pr->ndpr_prefix;
 new->ndpr_plen = pr->ndpr_plen;
 new->ndpr_vltime = pr->ndpr_vltime;
 new->ndpr_pltime = pr->ndpr_pltime;
 new->ndpr_flags = pr->ndpr_flags;
 if (pr->ndpr_stateflags & NDPRF_STATIC)
  new->ndpr_stateflags |= NDPRF_STATIC;
 NDPR_UNLOCK(pr);
 if ((error = in6_init_prefix_ltimes(new)) != 0) {
  NDPR_UNLOCK(new);
  ndpr_free(new);
  return (error);
 }
 new->ndpr_lastupdate = net_uptime();
 if (newp != ((void*)0)) {
  *newp = new;
  NDPR_ADDREF_LOCKED(new);
 }

 LIST_INIT(&new->ndpr_advrtrs);
 in6_prefixlen2mask(&new->ndpr_mask, new->ndpr_plen);

 for (i = 0; i < 4; i++)
  new->ndpr_prefix.sin6_addr.s6_addr32[i] &=
   new->ndpr_mask.s6_addr32[i];

 NDPR_UNLOCK(new);


 ++nd6_sched_timeout_want;

 lck_mtx_lock(nd6_mutex);

 LIST_INSERT_HEAD(&nd_prefix, new, ndpr_entry);
 new->ndpr_debug |= IFD_ATTACHED;
 NDPR_ADDREF(new);

 lck_mtx_lock(&ndi->lock);
 ndi->nprefixes++;
 VERIFY(ndi->nprefixes != 0);
 lck_mtx_unlock(&ndi->lock);


 if (new->ndpr_raf_onlink) {
  int e;

  if ((e = nd6_prefix_onlink_common(new, force_scoped,
      new->ndpr_ifp->if_index)) != 0) {
   nd6log((LOG_ERR, "nd6_prelist_add: failed to make "
       "the prefix %s/%d on-link %s on %s (errno=%d)\n",
       ip6_sprintf(&new->ndpr_prefix.sin6_addr),
       new->ndpr_plen, force_scoped ? "scoped" :
       "non-scoped", if_name(ifp), e));

  }
 }

 if (dr) {
  pfxrtr_add(new, dr);
 }

 lck_mtx_unlock(nd6_mutex);

 return (0);
}
