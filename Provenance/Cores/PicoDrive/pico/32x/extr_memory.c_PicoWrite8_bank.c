
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int sram_reg; } ;
struct TYPE_6__ {TYPE_1__ m; } ;
struct TYPE_5__ {int* regs; } ;


 int EL_UIO ;
 TYPE_3__ Pico ;
 TYPE_2__ Pico32x ;
 int SRR_MAPPED ;
 int SekPc ;
 int elprintf (int ,char*,int,int,int ) ;
 int m68k_write8 (int,int) ;

__attribute__((used)) static void PicoWrite8_bank(u32 a, u32 d)
{
  if (!(Pico.m.sram_reg & SRR_MAPPED))
    elprintf(EL_UIO, "m68k w8  [%06x]   %02x @%06x",
      a, d & 0xff, SekPc);

  a = (Pico32x.regs[4 / 2] << 20) | (a & 0xfffff);
  m68k_write8(a, d);
}
