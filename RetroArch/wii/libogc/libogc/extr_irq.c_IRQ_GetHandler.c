
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
typedef int raw_irq_handler_t ;
struct TYPE_2__ {int pHndl; } ;


 int _CPU_ISR_Disable (size_t) ;
 int _CPU_ISR_Restore (size_t) ;
 TYPE_1__* g_IRQHandler ;

raw_irq_handler_t IRQ_GetHandler(u32 nIrq)
{
 u32 level;
 raw_irq_handler_t ret;

 _CPU_ISR_Disable(level);
 ret = g_IRQHandler[nIrq].pHndl;
 _CPU_ISR_Restore(level);
 return ret;
}
