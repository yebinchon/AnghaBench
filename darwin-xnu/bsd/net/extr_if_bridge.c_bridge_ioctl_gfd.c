
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbrparam {int ifbrp_fwddelay; } ;
struct bstp_state {int bs_bridge_fdelay; } ;
struct bridge_softc {struct bstp_state sc_stp; } ;


 int bridge_in_bsd_mode (struct bridge_softc*) ;

__attribute__((used)) static int
bridge_ioctl_gfd(struct bridge_softc *sc, void *arg)
{
 struct ifbrparam *param;
 struct bstp_state *bs;

 if (!bridge_in_bsd_mode(sc)) {
  return (0);
 }
 param = arg;
 bs = &sc->sc_stp;
 param->ifbrp_fwddelay = bs->bs_bridge_fdelay >> 8;
 return (0);
}
