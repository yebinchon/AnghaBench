
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bdc_func; struct bridge_softc* bdc_sc; } ;
struct bridge_softc {int sc_flags; int sc_brtcnt; int sc_rthash_size; TYPE_1__ sc_resize_call; } ;


 int BRIDGE_LOCK_ASSERT_HELD (struct bridge_softc*) ;
 int SCF_DETACHING ;
 int SCF_RESIZING ;
 int bridge_rtable_hash_size_max ;
 int bridge_rthash_delayed_resize ;
 int bridge_schedule_delayed_call (TYPE_1__*) ;

__attribute__((used)) static void
bridge_rthash_resize(struct bridge_softc *sc)
{
 BRIDGE_LOCK_ASSERT_HELD(sc);

 if ((sc->sc_flags & SCF_DETACHING) || (sc->sc_flags & SCF_RESIZING))
  return;




 if (sc->sc_brtcnt < sc->sc_rthash_size * 4)
  return;



 if (sc->sc_rthash_size >= bridge_rtable_hash_size_max)
  return;

 sc->sc_resize_call.bdc_sc = sc;
 sc->sc_resize_call.bdc_func = bridge_rthash_delayed_resize;
 bridge_schedule_delayed_call(&sc->sc_resize_call);
}
