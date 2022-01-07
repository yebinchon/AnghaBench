
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ romsize; scalar_t__ rom; } ;


 int EL_STATUS ;
 int M68K_BANK_SIZE ;
 TYPE_1__ Pico ;
 int PicoCartResize (scalar_t__) ;
 int PicoResetHook ;
 int carthw_realtec_reset ;
 int elprintf (int ,char*) ;
 int memcpy (scalar_t__,scalar_t__,int) ;

void carthw_realtec_startup(void)
{
 int i;

 elprintf(EL_STATUS, "Realtec mapper startup");



 i = PicoCartResize(Pico.romsize + M68K_BANK_SIZE);
 if (i != 0) {
  elprintf(EL_STATUS, "OOM");
  return;
 }


 for (i = 0; i < M68K_BANK_SIZE; i += 0x2000)
  memcpy(Pico.rom + Pico.romsize + i, Pico.rom + Pico.romsize - 0x2000, 0x2000);

 PicoResetHook = carthw_realtec_reset;
}
