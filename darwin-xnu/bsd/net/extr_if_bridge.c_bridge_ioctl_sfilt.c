
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbrparam {int ifbrp_filter; } ;
struct bridge_softc {int sc_filter_flags; } ;


 int EINVAL ;
 int IFBF_FILT_MASK ;
 int IFBF_FILT_USEIPF ;

__attribute__((used)) static int
bridge_ioctl_sfilt(struct bridge_softc *sc, void *arg)
{
 struct ifbrparam *param = arg;

 if (param->ifbrp_filter & ~IFBF_FILT_MASK)
  return (EINVAL);


 if (param->ifbrp_filter & IFBF_FILT_USEIPF)
  return (EINVAL);


 sc->sc_filter_flags = param->ifbrp_filter;

 return (0);
}
