
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbrparam {int ifbrp_filter; } ;
struct bridge_softc {int sc_filter_flags; } ;



__attribute__((used)) static int
bridge_ioctl_gfilt(struct bridge_softc *sc, void *arg)
{
 struct ifbrparam *param = arg;

 param->ifbrp_filter = sc->sc_filter_flags;

 return (0);
}
