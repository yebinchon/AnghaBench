
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int** word_ram1M; } ;


 TYPE_1__* Pico_mcd ;

__attribute__((used)) static u32 PicoReadS68k16_dec1(u32 a)
{
  u32 d = Pico_mcd->word_ram1M[1][((a >> 1) ^ 1) & 0x1ffff];
  d |= d << 4;
  d &= ~0xf0;
  return d;
}
