
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct gif_softc* if_softc; } ;
struct gif_softc {int gif_flags; int * encap_cookie4; int * encap_cookie6; } ;


 int EINVAL ;
 int GIF_LOCK (struct gif_softc*) ;
 int GIF_UNLOCK (struct gif_softc*) ;
 int IFGIF_DETACHING ;
 int KASSERT (int,char*) ;
 int TAILQ_REMOVE (int *,struct gif_softc*,int ) ;
 int encap_detach (int *) ;
 int gif_delete_tunnel (struct gif_softc*) ;
 int gif_link ;
 int gif_mtx ;
 int gifs ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int ngif ;

__attribute__((used)) static int
gif_remove(struct ifnet *ifp)
{
 int error = 0;
 struct gif_softc *sc = ((void*)0);

 lck_mtx_lock(gif_mtx);
 sc = ifp->if_softc;

 if (sc == ((void*)0)) {
  error = EINVAL;
  goto done;
 }

 GIF_LOCK(sc);
 if (sc->gif_flags & IFGIF_DETACHING) {
  error = EINVAL;
  goto done;
 }

 sc->gif_flags |= IFGIF_DETACHING;
 TAILQ_REMOVE(&gifs, sc, gif_link);
 ngif--;

 gif_delete_tunnel(sc);
done:
 if (sc != ((void*)0))
  GIF_UNLOCK(sc);
 lck_mtx_unlock(gif_mtx);

 return (error);
}
