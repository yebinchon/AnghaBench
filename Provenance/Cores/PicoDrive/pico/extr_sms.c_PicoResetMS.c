
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PsndReset () ;
 int z80_reset () ;

void PicoResetMS(void)
{
  z80_reset();
  PsndReset();
}
