
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stf_softc {int tap_callback; int tap_mode; } ;
typedef int ifnet_t ;
typedef int errno_t ;
typedef int bpf_tap_mode ;
typedef int bpf_packet_func ;


 struct stf_softc* ifnet_softc (int ) ;

__attribute__((used)) static errno_t
stf_set_bpf_tap(
 ifnet_t ifp,
 bpf_tap_mode mode,
 bpf_packet_func callback)
{
 struct stf_softc *sc = ifnet_softc(ifp);

 sc->tap_mode = mode;
 sc->tap_callback = callback;

 return 0;
}
