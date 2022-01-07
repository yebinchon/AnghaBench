
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {scalar_t__ if_softc; } ;
struct bridge_softc {int sc_stp; } ;
typedef scalar_t__ errno_t ;


 int BRIDGE_LOCK_ASSERT_HELD (struct bridge_softc*) ;
 int IFF_RUNNING ;
 int bridge_aging_timer (struct bridge_softc*) ;
 scalar_t__ bridge_in_bsd_mode (struct bridge_softc*) ;
 int bstp_init (int *) ;
 int ifnet_flags (struct ifnet*) ;
 scalar_t__ ifnet_set_flags (struct ifnet*,int,int) ;

__attribute__((used)) static int
bridge_init(struct ifnet *ifp)
{
 struct bridge_softc *sc = (struct bridge_softc *)ifp->if_softc;
 errno_t error;

 BRIDGE_LOCK_ASSERT_HELD(sc);

 if ((ifnet_flags(ifp) & IFF_RUNNING))
  return (0);

 error = ifnet_set_flags(ifp, IFF_RUNNING, IFF_RUNNING);

 if (bridge_in_bsd_mode(sc)) {




  bridge_aging_timer(sc);




 }
 return (error);
}
