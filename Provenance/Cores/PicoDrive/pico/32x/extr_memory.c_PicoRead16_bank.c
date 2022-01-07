
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int* regs; } ;


 TYPE_1__ Pico32x ;
 int m68k_read16 (int) ;

__attribute__((used)) static u32 PicoRead16_bank(u32 a)
{
  a = (Pico32x.regs[4 / 2] << 20) | (a & 0xfffff);
  return m68k_read16(a);
}
