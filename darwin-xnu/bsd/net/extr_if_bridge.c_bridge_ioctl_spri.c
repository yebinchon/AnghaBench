
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbrparam {int ifbrp_prio; } ;
struct bridge_softc {int sc_stp; } ;


 int EOPNOTSUPP ;
 int bridge_in_bsd_mode (struct bridge_softc*) ;
 int bstp_set_priority (int *,int ) ;

__attribute__((used)) static int
bridge_ioctl_spri(struct bridge_softc *sc, void *arg)
{








#pragma unused(sc, arg)
 return (EOPNOTSUPP);

}
