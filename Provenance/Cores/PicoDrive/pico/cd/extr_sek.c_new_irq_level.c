
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s68k_pend_ints; } ;
struct TYPE_4__ {int* s68k_regs; TYPE_1__ m; } ;


 TYPE_2__* Pico_mcd ;

__attribute__((used)) static int new_irq_level(int level)
{
  int level_new = 0, irqs;
  Pico_mcd->m.s68k_pend_ints &= ~(1 << level);
  irqs = Pico_mcd->m.s68k_pend_ints;
  irqs &= Pico_mcd->s68k_regs[0x33];
  while ((irqs >>= 1)) level_new++;

  return level_new;
}
