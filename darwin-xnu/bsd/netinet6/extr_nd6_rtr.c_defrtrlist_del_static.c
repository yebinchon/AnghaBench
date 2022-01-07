
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_defrouter {int stateflags; int ifp; int rtaddr; } ;


 int EINVAL ;
 int NDDRF_STATIC ;
 int NDDR_REMREF (struct nd_defrouter*) ;
 int TAILQ_REMOVE (int *,struct nd_defrouter*,int ) ;
 struct nd_defrouter* defrouter_lookup (int *,int ) ;
 int defrtrlist_del (struct nd_defrouter*) ;
 int dr_entry ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int nd6_mutex ;
 int nd_defrouter ;

int
defrtrlist_del_static(struct nd_defrouter *new)
{
 struct nd_defrouter *dr;

 lck_mtx_lock(nd6_mutex);
 dr = defrouter_lookup(&new->rtaddr, new->ifp);
 if (dr == ((void*)0) || !(dr->stateflags & NDDRF_STATIC)) {
  if (dr != ((void*)0))
   NDDR_REMREF(dr);
  dr = ((void*)0);
 } else {
  TAILQ_REMOVE(&nd_defrouter, dr, dr_entry);
  defrtrlist_del(dr);
  NDDR_REMREF(dr);
  NDDR_REMREF(dr);
 }
 lck_mtx_unlock(nd6_mutex);

 return (dr != ((void*)0) ? 0 : EINVAL);
}
