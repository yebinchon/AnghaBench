
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int sh2irqs; unsigned int* sh2irqi; int* sh2irq_mask; } ;
typedef int SH2 ;


 unsigned int P32XI_VRES ;
 TYPE_1__ Pico32x ;
 int p32x_update_irls (int *,int) ;

void p32x_trigger_irq(SH2 *sh2, int m68k_cycles, unsigned int mask)
{
  Pico32x.sh2irqs |= mask & P32XI_VRES;
  Pico32x.sh2irqi[0] |= mask & (Pico32x.sh2irq_mask[0] << 3);
  Pico32x.sh2irqi[1] |= mask & (Pico32x.sh2irq_mask[1] << 3);

  p32x_update_irls(sh2, m68k_cycles);
}
