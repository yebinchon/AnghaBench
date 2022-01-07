
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct bridge_softc* if_softc; } ;
struct bridge_softc {int sc_stp; int sc_aging_timer; } ;


 int BRIDGE_LOCK_ASSERT_HELD (struct bridge_softc*) ;
 int IFBF_FLUSHDYN ;
 int IFF_RUNNING ;
 int bridge_cancel_delayed_call (int *) ;
 scalar_t__ bridge_in_bsd_mode (struct bridge_softc*) ;
 int bridge_rtflush (struct bridge_softc*,int ) ;
 int bstp_stop (int *) ;
 int ifnet_flags (struct ifnet*) ;
 int ifnet_set_flags (struct ifnet*,int ,int) ;

__attribute__((used)) static void
bridge_ifstop(struct ifnet *ifp, int disable)
{
#pragma unused(disable)
 struct bridge_softc *sc = ifp->if_softc;

 BRIDGE_LOCK_ASSERT_HELD(sc);

 if ((ifnet_flags(ifp) & IFF_RUNNING) == 0)
  return;

 if (bridge_in_bsd_mode(sc)) {
  bridge_cancel_delayed_call(&sc->sc_aging_timer);





  bridge_rtflush(sc, IFBF_FLUSHDYN);
 }
 (void) ifnet_set_flags(ifp, 0, IFF_RUNNING);
}
