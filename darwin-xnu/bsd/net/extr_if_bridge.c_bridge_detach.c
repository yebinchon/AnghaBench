
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_softc {int sc_mtx; int sc_stp; } ;
typedef int ifnet_t ;


 int LIST_REMOVE (struct bridge_softc*,int ) ;
 int bridge_cloner ;
 scalar_t__ bridge_in_bsd_mode (struct bridge_softc*) ;
 int bridge_list_mtx ;
 int bridge_lock_grp ;
 int bridge_rtable_fini (struct bridge_softc*) ;
 int bstp_detach (int *) ;
 int if_clone_softc_deallocate (int *,struct bridge_softc*) ;
 int ifnet_release (int ) ;
 scalar_t__ ifnet_softc (int ) ;
 int lck_mtx_destroy (int *,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int sc_list ;

__attribute__((used)) static void
bridge_detach(ifnet_t ifp)
{
 struct bridge_softc *sc = (struct bridge_softc *)ifnet_softc(ifp);





 if (bridge_in_bsd_mode(sc)) {

  bridge_rtable_fini(sc);
 }

 lck_mtx_lock(&bridge_list_mtx);
 LIST_REMOVE(sc, sc_list);
 lck_mtx_unlock(&bridge_list_mtx);

 ifnet_release(ifp);

 lck_mtx_destroy(&sc->sc_mtx, bridge_lock_grp);
 if_clone_softc_deallocate(&bridge_cloner, sc);
}
