
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; } ;
struct nd_ifinfo {scalar_t__ initialized; scalar_t__ ndefrouters; int lock; } ;
struct nd_defrouter {scalar_t__ rtlifetime; int stateflags; int err; struct ifnet* ifp; int base_uptime; int base_calendartime; int expire; int flags; int rtaddr; } ;
struct ifnet {int dummy; } ;
typedef scalar_t__ boolean_t ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int LOG_INFO ;
 int M_WAITOK ;
 int NDDRF_IFSCOPE ;
 int NDDR_ADDREF (struct nd_defrouter*) ;
 int NDDR_LOCK (struct nd_defrouter*) ;
 int NDDR_REMREF (struct nd_defrouter*) ;
 int NDDR_UNLOCK (struct nd_defrouter*) ;
 struct nd_ifinfo* ND_IFINFO (struct ifnet*) ;
 struct nd_defrouter* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_BEFORE (struct nd_defrouter*,struct nd_defrouter*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct nd_defrouter*,int ) ;
 struct nd_defrouter* TAILQ_NEXT (struct nd_defrouter*,int ) ;
 int TAILQ_REMOVE (int *,struct nd_defrouter*,int ) ;
 scalar_t__ TRUE ;
 int VERIFY (int) ;
 struct nd_defrouter* defrouter_lookup (int *,struct ifnet*) ;
 int defrouter_select (struct ifnet*) ;
 int defrtrlist_del (struct nd_defrouter*) ;
 int dr_entry ;
 int getmicrotime (struct timeval*) ;
 int if_name (struct ifnet*) ;
 scalar_t__ ip6_maxifdefrouters ;
 int ip6_sprintf (int *) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int memcpy (int *,int *,int) ;
 int nd6_defrouter_genid ;
 int nd6_mutex ;
 int nd6_sched_timeout_want ;
 int nd6log2 (int ) ;
 int nd_defrouter ;
 struct nd_defrouter* nddr_alloc (int ) ;
 int nddr_free (struct nd_defrouter*) ;
 int net_uptime () ;
 int rtpref (struct nd_defrouter*) ;

__attribute__((used)) static struct nd_defrouter *
defrtrlist_update_common(struct nd_defrouter *new, boolean_t scoped)
{
 struct nd_defrouter *dr, *n;
 struct ifnet *ifp = new->ifp;
 struct nd_ifinfo *ndi = ((void*)0);
 struct timeval caltime;

 LCK_MTX_ASSERT(nd6_mutex, LCK_MTX_ASSERT_OWNED);

 if ((dr = defrouter_lookup(&new->rtaddr, ifp)) != ((void*)0)) {

  if (new->rtlifetime == 0) {
   TAILQ_REMOVE(&nd_defrouter, dr, dr_entry);
   defrtrlist_del(dr);
   NDDR_REMREF(dr);
   NDDR_REMREF(dr);
   dr = ((void*)0);
  } else {
   int oldpref = rtpref(dr);
   struct nd_defrouter *p = ((void*)0);

   dr->flags = new->flags;
   dr->rtlifetime = new->rtlifetime;
   dr->expire = new->expire;
   if (rtpref(new) == oldpref && scoped)
    return (dr);

   n = TAILQ_FIRST(&nd_defrouter);
   while (n != ((void*)0)) {

    if (rtpref(new) != oldpref)
     break;


    if (n != dr && rtpref(n) == oldpref &&
      (!p || rtpref(p) > rtpref(n)))
     break;

    p = n;
    n = TAILQ_NEXT(n, dr_entry);
   }


   if (n == ((void*)0) && (scoped ||
       !(dr->stateflags & NDDRF_IFSCOPE)))
    return (dr);
   TAILQ_REMOVE(&nd_defrouter, dr, dr_entry);
   new->stateflags = dr->stateflags;

   n = dr;
   goto insert;
  }
  return (dr);
 }

 VERIFY(dr == ((void*)0));


 if (new->rtlifetime == 0) {
  return (((void*)0));
 }

 n = nddr_alloc(M_WAITOK);
 if (n == ((void*)0)) {
  return (((void*)0));
 }

 ndi = ND_IFINFO(ifp);
 VERIFY((((void*)0) != ndi) && (TRUE == ndi->initialized));
 lck_mtx_lock(&ndi->lock);
 if (ip6_maxifdefrouters >= 0 &&
     ndi->ndefrouters >= ip6_maxifdefrouters) {
  lck_mtx_unlock(&ndi->lock);
  nddr_free(n);
  return (((void*)0));
 }

 NDDR_ADDREF(n);
 NDDR_ADDREF(n);

 ++nd6_defrouter_genid;
 ndi->ndefrouters++;
 VERIFY(ndi->ndefrouters != 0);
 lck_mtx_unlock(&ndi->lock);

 nd6log2((LOG_INFO, "%s: allocating defrouter %s\n", if_name(ifp),
     ip6_sprintf(&new->rtaddr)));

 getmicrotime(&caltime);
 NDDR_LOCK(n);
 memcpy(&n->rtaddr, &new->rtaddr, sizeof (n->rtaddr));
 n->flags = new->flags;
 n->stateflags = new->stateflags;
 n->rtlifetime = new->rtlifetime;
 n->expire = new->expire;
 n->base_calendartime = caltime.tv_sec;
 n->base_uptime = net_uptime();
 n->ifp = new->ifp;
 n->err = new->err;
 NDDR_UNLOCK(n);
insert:

 ++nd6_sched_timeout_want;
 for (dr = TAILQ_FIRST(&nd_defrouter); dr;
     dr = TAILQ_NEXT(dr, dr_entry)) {
  if (rtpref(n) > rtpref(dr) ||
      (!scoped && rtpref(n) == rtpref(dr)))
   break;
 }
 if (dr)
  TAILQ_INSERT_BEFORE(dr, n, dr_entry);
 else
  TAILQ_INSERT_TAIL(&nd_defrouter, n, dr_entry);

 defrouter_select(ifp);

 return (n);
}
