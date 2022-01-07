
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbrparam {int ifbrp_hellotime; } ;
struct bstp_state {int bs_bridge_htime; } ;
struct bridge_softc {struct bstp_state sc_stp; } ;


 int bridge_in_bsd_mode (struct bridge_softc*) ;

__attribute__((used)) static int
bridge_ioctl_ght(struct bridge_softc *sc, void *arg)
{
 struct ifbrparam *param = arg;
 struct bstp_state *bs = &sc->sc_stp;

 if (!bridge_in_bsd_mode(sc)) {
  return (0);
 }
 param->ifbrp_hellotime = bs->bs_bridge_htime >> 8;
 return (0);
}
