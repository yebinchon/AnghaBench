
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_softc {int sc_flags; } ;


 int SCF_BSD_MODE ;

__attribute__((used)) static inline void
bridge_set_bsd_mode(struct bridge_softc * sc)
{
 sc->sc_flags |= SCF_BSD_MODE;
}
