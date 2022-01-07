
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pflog_softc {int sc_flags; } ;
struct ifnet {struct pflog_softc* if_softc; } ;


 int EINVAL ;
 int IFPFLF_DETACHING ;
 int LIST_REMOVE (struct pflog_softc*,int ) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int lck_rw_done (int ) ;
 int lck_rw_lock_shared (int ) ;
 int pf_lock ;
 int pf_perim_lock ;
 int sc_list ;

__attribute__((used)) static int
pflog_remove(struct ifnet *ifp)
{
 int error = 0;
 struct pflog_softc *pflogif = ((void*)0);

 lck_rw_lock_shared(pf_perim_lock);
 lck_mtx_lock(pf_lock);
 pflogif = ifp->if_softc;

 if (pflogif == ((void*)0) ||
     (pflogif->sc_flags & IFPFLF_DETACHING) != 0) {
  error = EINVAL;
  goto done;
 }

 pflogif->sc_flags |= IFPFLF_DETACHING;
 LIST_REMOVE(pflogif, sc_list);
done:
 lck_mtx_unlock(pf_lock);
 lck_rw_done(pf_perim_lock);
 return error;
}
