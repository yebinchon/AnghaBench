
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAHW_SMS ;
 int PicoAHW ;
 int SekStepM68k () ;
 int z80_run_nr (int) ;

void PDebugCPUStep(void)
{
  if (PicoAHW & PAHW_SMS)
    z80_run_nr(1);
  else
    SekStepM68k();
}
