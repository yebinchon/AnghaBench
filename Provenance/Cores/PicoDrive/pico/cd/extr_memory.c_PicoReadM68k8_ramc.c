
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
struct TYPE_5__ {int* data; } ;


 int EL_UIO ;
 TYPE_3__* Pico_mcd ;
 TYPE_2__ SRam ;
 int SekPc ;
 int elprintf (int ,char*,int,int ) ;

__attribute__((used)) static u32 PicoReadM68k8_ramc(u32 a)
{
  u32 d = 0;
  if (a == 0x400001) {
    if (SRam.data != ((void*)0))
      d = 3;
    return d;
  }

  if ((a & 0xfe0000) == 0x600000) {
    if (SRam.data != ((void*)0))
      d = SRam.data[((a >> 1) & 0xffff) + 0x2000];
    return d;
  }

  if (a == 0x7fffff)
    return Pico_mcd->m.bcram_reg;

  elprintf(EL_UIO, "m68k unmapped r8  [%06x] @%06x", a, SekPc);
  return d;
}
