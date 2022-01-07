
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gif_softc {scalar_t__ gif_proto; } ;
typedef scalar_t__ protocol_family_t ;
typedef int ifnet_t ;
typedef int errno_t ;


 int GIF_LOCK (struct gif_softc*) ;
 int GIF_UNLOCK (struct gif_softc*) ;
 struct gif_softc* ifnet_softc (int ) ;

__attribute__((used)) static errno_t
gif_del_proto(
 ifnet_t ifp,
 protocol_family_t protocol_family)
{
 struct gif_softc *sc = ifnet_softc(ifp);

 GIF_LOCK(sc);
 if (sc->gif_proto == protocol_family)
  sc->gif_proto = 0;
 GIF_UNLOCK(sc);

 return (0);
}
