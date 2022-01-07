
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int* interrupts; } ;


 int CPU_INT_LEVEL ;
 TYPE_2__ PicoCpuCS68k ;
 TYPE_1__ PicoCpuFS68k ;
 int new_irq_level (int) ;

void SekInterruptClearS68k(int irq)
{
  int level_new = new_irq_level(irq);
}
