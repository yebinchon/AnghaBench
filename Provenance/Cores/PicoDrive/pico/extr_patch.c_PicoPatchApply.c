
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int romsize; scalar_t__ rom; } ;
struct TYPE_3__ {unsigned int addr; unsigned short data; unsigned short data_old; scalar_t__ active; } ;


 TYPE_2__ Pico ;
 int PicoPatchCount ;
 TYPE_1__* PicoPatches ;

void PicoPatchApply(void)
{
 int i, u;
 unsigned int addr;

 for (i = 0; i < PicoPatchCount; i++)
 {
  addr = PicoPatches[i].addr;
  if (addr < Pico.romsize)
  {
   if (PicoPatches[i].active)
    *(unsigned short *)(Pico.rom + addr) = PicoPatches[i].data;
   else {

    for (u = 0; u < i; u++)
     if (PicoPatches[u].addr == addr) break;
    if (u == i)
     *(unsigned short *)(Pico.rom + addr) = PicoPatches[i].data_old;
   }


  }
  else
  {

  }
 }
}
