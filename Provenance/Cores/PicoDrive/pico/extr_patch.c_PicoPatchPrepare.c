
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int romsize; scalar_t__ rom; } ;
struct TYPE_3__ {int addr; unsigned short data_old; int active; int name; } ;


 TYPE_2__ Pico ;
 int PicoPatchCount ;
 TYPE_1__* PicoPatches ;
 scalar_t__ strstr (int ,char*) ;

void PicoPatchPrepare(void)
{
 int i;

 for (i = 0; i < PicoPatchCount; i++)
 {
  PicoPatches[i].addr &= ~1;
  if (PicoPatches[i].addr < Pico.romsize)
   PicoPatches[i].data_old = *(unsigned short *)(Pico.rom + PicoPatches[i].addr);
  if (strstr(PicoPatches[i].name, "AUTO"))
   PicoPatches[i].active = 1;
 }
}
