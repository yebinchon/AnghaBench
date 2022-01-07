
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ end; scalar_t__ start; scalar_t__ size; int * data; } ;


 int PAHW_MCD ;
 int PicoAHW ;
 int PicoCartUnload () ;
 int PicoExitMCD () ;
 TYPE_1__ SRam ;
 int free (int *) ;
 int pevt_dump () ;
 int z80_exit () ;

void PicoExit(void)
{
  if (PicoAHW & PAHW_MCD)
    PicoExitMCD();
  PicoCartUnload();
  z80_exit();

    if (SRam.data != ((void*)0)) {
        free(SRam.data);
        SRam.data = ((void*)0);
        SRam.size = 0;
        SRam.start = SRam.end = 0;
    }
  pevt_dump();
}
