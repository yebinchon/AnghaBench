
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rom; scalar_t__ romsize; } ;


 int EL_STATUS ;
 TYPE_1__ Pico ;
 int PicoCartMemSetup ;
 int PicoCartResize (scalar_t__) ;
 int carthw_prot_lk3_mem_setup ;
 int elprintf (int ,char*) ;
 int memcpy (scalar_t__,scalar_t__,int) ;

void carthw_prot_lk3_startup(void)
{
  int ret;

  elprintf(EL_STATUS, "lk3 prot emu startup");


  ret = PicoCartResize(Pico.romsize + 0x8000);
  if (ret != 0) {
    elprintf(EL_STATUS, "OOM");
    return;
  }
  memcpy(Pico.rom + Pico.romsize, Pico.rom, 0x8000);

  PicoCartMemSetup = carthw_prot_lk3_mem_setup;
}
