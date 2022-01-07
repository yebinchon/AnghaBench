
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_defrouter {int rtlifetime; int stateflags; int err; int ifp; int rtaddr; int flags; } ;


 int EINVAL ;
 int ENOMEM ;
 int NDDRF_STATIC ;
 int NDDR_REMREF (struct nd_defrouter*) ;
 int ND_RA_FLAG_RTPREF_MASK ;
 struct nd_defrouter* defrouter_lookup (int *,int ) ;
 struct nd_defrouter* defrtrlist_update (struct nd_defrouter*) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int nd6_mutex ;

int
defrtrlist_add_static(struct nd_defrouter *new)
{
 struct nd_defrouter *dr;
 int err = 0;

 new->rtlifetime = -1;
 new->stateflags |= NDDRF_STATIC;


 new->flags &= ND_RA_FLAG_RTPREF_MASK;

 lck_mtx_lock(nd6_mutex);
 dr = defrouter_lookup(&new->rtaddr, new->ifp);
 if (dr != ((void*)0) && !(dr->stateflags & NDDRF_STATIC)) {
  err = EINVAL;
 } else {
  if (dr != ((void*)0))
   NDDR_REMREF(dr);
  dr = defrtrlist_update(new);
  if (dr != ((void*)0))
   err = dr->err;
  else
   err = ENOMEM;
 }
 if (dr != ((void*)0))
  NDDR_REMREF(dr);
 lck_mtx_unlock(nd6_mutex);

 return (err);
}
