
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gif_softc {int gif_ro; int * gif_pdst; int * gif_psrc; } ;
typedef int caddr_t ;


 int FREE (int ,int ) ;
 int GIF_LOCK_ASSERT (struct gif_softc*) ;
 int M_IFADDR ;
 int ROUTE_RELEASE (int *) ;

__attribute__((used)) static void
gif_delete_tunnel(struct gif_softc *sc)
{
 GIF_LOCK_ASSERT(sc);
 if (sc->gif_psrc) {
  FREE((caddr_t)sc->gif_psrc, M_IFADDR);
  sc->gif_psrc = ((void*)0);
 }
 if (sc->gif_pdst) {
  FREE((caddr_t)sc->gif_pdst, M_IFADDR);
  sc->gif_pdst = ((void*)0);
 }
 ROUTE_RELEASE(&sc->gif_ro);

}
