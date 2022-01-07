
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_defrouter {int stateflags; int nddr_lock; } ;
typedef int drany ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int NDDRF_INSTALLED ;
 int NDDR_ADDREF_LOCKED (struct nd_defrouter*) ;
 int NDDR_LOCK (struct nd_defrouter*) ;
 int NDDR_REMREF (struct nd_defrouter*) ;
 int NDDR_UNLOCK (struct nd_defrouter*) ;
 struct nd_defrouter* TAILQ_FIRST (int *) ;
 struct nd_defrouter* TAILQ_NEXT (struct nd_defrouter*,int ) ;
 int bzero (struct nd_defrouter*,int) ;
 int defrouter_delreq (struct nd_defrouter*) ;
 int dr_entry ;
 int ifa_mtx_attr ;
 int ifa_mtx_grp ;
 int lck_mtx_destroy (int *,int ) ;
 int lck_mtx_init (int *,int ,int ) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int nd6_mutex ;
 int nd_defrouter ;

void
defrouter_reset(void)
{
 struct nd_defrouter *dr, drany;

 LCK_MTX_ASSERT(nd6_mutex, LCK_MTX_ASSERT_OWNED);

 dr = TAILQ_FIRST(&nd_defrouter);
 while (dr) {
  NDDR_LOCK(dr);
  if (dr->stateflags & NDDRF_INSTALLED) {
   NDDR_ADDREF_LOCKED(dr);
   NDDR_UNLOCK(dr);
   lck_mtx_unlock(nd6_mutex);
   defrouter_delreq(dr);
   lck_mtx_lock(nd6_mutex);
   NDDR_REMREF(dr);
   dr = TAILQ_FIRST(&nd_defrouter);
  } else {
   NDDR_UNLOCK(dr);
   dr = TAILQ_NEXT(dr, dr_entry);
  }
 }


 bzero(&drany, sizeof (drany));
 lck_mtx_init(&drany.nddr_lock, ifa_mtx_grp, ifa_mtx_attr);
 lck_mtx_unlock(nd6_mutex);
 defrouter_delreq(&drany);
 lck_mtx_destroy(&drany.nddr_lock, ifa_mtx_grp);
 lck_mtx_lock(nd6_mutex);
}
