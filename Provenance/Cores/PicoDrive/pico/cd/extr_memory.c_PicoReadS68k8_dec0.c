
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int** word_ram1M; } ;


 TYPE_1__* Pico_mcd ;

__attribute__((used)) static u32 PicoReadS68k8_dec0(u32 a)
{
  u32 d = Pico_mcd->word_ram1M[0][((a >> 1) ^ 1) & 0x1ffff];
  if (a & 1)
    d &= 0x0f;
  else
    d >>= 4;
  return d;
}
