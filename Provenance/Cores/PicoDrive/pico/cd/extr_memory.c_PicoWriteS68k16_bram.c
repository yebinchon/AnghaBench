
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int* bram; } ;
struct TYPE_3__ {int changed; } ;


 int EL_ANOMALY ;
 TYPE_2__* Pico_mcd ;
 TYPE_1__ SRam ;
 int SekPcS68k ;
 int elprintf (int ,char*,int,int,int ) ;

__attribute__((used)) static void PicoWriteS68k16_bram(u32 a, u32 d)
{
  elprintf(EL_ANOMALY, "s68k_bram w16: [%06x] %04x @%06x", a, d, SekPcS68k);
  a = (a >> 1) & 0x1fff;
  Pico_mcd->bram[a++] = d;
  Pico_mcd->bram[a++] = d >> 8;
  SRam.changed = 1;
}
