
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int bcram_reg; } ;
struct TYPE_6__ {TYPE_1__ m; } ;
struct TYPE_5__ {int* data; int changed; } ;


 int EL_UIO ;
 TYPE_3__* Pico_mcd ;
 TYPE_2__ SRam ;
 int SekPc ;
 int elprintf (int ,char*,int,int,int ) ;

__attribute__((used)) static void PicoWriteM68k8_ramc(u32 a, u32 d)
{
  if ((a & 0xfe0000) == 0x600000) {
    if (SRam.data != ((void*)0) && (Pico_mcd->m.bcram_reg & 1)) {
      SRam.data[((a>>1) & 0xffff) + 0x2000] = d;
      SRam.changed = 1;
    }
    return;
  }

  if (a == 0x7fffff) {
    Pico_mcd->m.bcram_reg = d;
    return;
  }

  elprintf(EL_UIO, "m68k unmapped w8  [%06x]   %02x @%06x",
    a, d & 0xff, SekPc);
}
