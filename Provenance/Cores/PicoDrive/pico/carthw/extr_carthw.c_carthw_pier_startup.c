
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rom; scalar_t__ romsize; } ;


 int EL_STATUS ;
 int M68K_BANK_SIZE ;
 TYPE_1__ Pico ;
 int PicoCartMemSetup ;
 int PicoCartResize (scalar_t__) ;
 int PicoLoadStateHook ;
 int PicoResetHook ;
 int carthw_chunks ;
 int carthw_pier_mem_setup ;
 int carthw_pier_reset ;
 int carthw_pier_state ;
 int carthw_pier_statef ;
 int elprintf (int ,char*) ;
 int memcpy (scalar_t__,scalar_t__,int) ;

void carthw_pier_startup(void)
{
  int i;

  elprintf(EL_STATUS, "Pier Solar mapper startup");


  i = PicoCartResize(Pico.romsize + M68K_BANK_SIZE);
  if (i != 0) {
    elprintf(EL_STATUS, "OOM");
    return;
  }


  for (i = 0; i < M68K_BANK_SIZE; i += 0x8000)
    memcpy(Pico.rom + Pico.romsize + i, Pico.rom, 0x8000);

  PicoCartMemSetup = carthw_pier_mem_setup;
  PicoResetHook = carthw_pier_reset;
  PicoLoadStateHook = carthw_pier_statef;
  carthw_chunks = carthw_pier_state;
}
