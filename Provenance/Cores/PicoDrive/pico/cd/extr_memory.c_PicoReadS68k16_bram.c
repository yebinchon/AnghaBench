
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int* bram; } ;


 int EL_ANOMALY ;
 TYPE_1__* Pico_mcd ;
 int SekPcS68k ;
 int elprintf (int ,char*,int,int ) ;

__attribute__((used)) static u32 PicoReadS68k16_bram(u32 a)
{
  u32 d;
  elprintf(EL_ANOMALY, "FIXME: s68k_bram r16: [%06x] @%06x", a, SekPcS68k);
  a = (a >> 1) & 0x1fff;
  d = Pico_mcd->bram[a++];
  d|= Pico_mcd->bram[a++] << 8;
  return d;
}
