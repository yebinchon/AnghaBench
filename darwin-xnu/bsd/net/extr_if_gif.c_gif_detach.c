
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct gif_softc* if_softc; } ;
struct gif_softc {int gif_lock; } ;


 int gif_cloner ;
 int gif_mtx_grp ;
 int if_clone_softc_deallocate (int *,struct gif_softc*) ;
 int ifnet_release (struct ifnet*) ;
 int lck_mtx_destroy (int *,int ) ;

__attribute__((used)) static void
gif_detach(struct ifnet *ifp)
{
 struct gif_softc *sc = ifp->if_softc;
 lck_mtx_destroy(&sc->gif_lock, gif_mtx_grp);
 if_clone_softc_deallocate(&gif_cloner, sc);
 ifp->if_softc = ((void*)0);
 (void) ifnet_release(ifp);
}
