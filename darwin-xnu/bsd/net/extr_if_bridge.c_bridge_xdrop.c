
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_softc {int sc_iflist_xcnt; } ;


 int BRIDGE_LOCK_ASSERT_HELD (struct bridge_softc*) ;

__attribute__((used)) static void
bridge_xdrop(struct bridge_softc *sc)
{
 BRIDGE_LOCK_ASSERT_HELD(sc);

 sc->sc_iflist_xcnt--;
}
