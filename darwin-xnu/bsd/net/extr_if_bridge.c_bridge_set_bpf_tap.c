
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_softc {int sc_flags; int * sc_bpf_output; int * sc_bpf_input; } ;
typedef int ifnet_t ;
typedef int errno_t ;
typedef int bpf_tap_mode ;
typedef void* bpf_packet_func ;


 int ASSERT (int ) ;




 int ENODEV ;
 int SCF_DETACHING ;
 int bridge_in_bsd_mode (struct bridge_softc*) ;
 scalar_t__ ifnet_softc (int ) ;

__attribute__((used)) static errno_t
bridge_set_bpf_tap(ifnet_t ifp, bpf_tap_mode mode, bpf_packet_func bpf_callback)
{
 struct bridge_softc *sc = (struct bridge_softc *)ifnet_softc(ifp);


 if (sc == ((void*)0) || (sc->sc_flags & SCF_DETACHING)) {
  return (ENODEV);
 }
 ASSERT(bridge_in_bsd_mode(sc));
 switch (mode) {
  case 131:
   sc->sc_bpf_input = sc->sc_bpf_output = ((void*)0);
   break;

  case 130:
   sc->sc_bpf_input = bpf_callback;
   break;

  case 128:
   sc->sc_bpf_output = bpf_callback;
   break;

  case 129:
   sc->sc_bpf_input = sc->sc_bpf_output = bpf_callback;
   break;

  default:
   break;
 }

 return (0);
}
