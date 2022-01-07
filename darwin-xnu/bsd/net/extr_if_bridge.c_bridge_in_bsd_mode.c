
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_softc {int sc_flags; } ;
typedef int boolean_t ;


 int SCF_BSD_MODE ;

__attribute__((used)) static inline boolean_t
bridge_in_bsd_mode(const struct bridge_softc * sc)
{
 return ((sc->sc_flags & SCF_BSD_MODE) != 0);
}
