
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
typedef int raw_irq_handler_t ;
struct TYPE_2__ {void* pCtx; int pHndl; } ;


 int _CPU_ISR_Disable (size_t) ;
 int _CPU_ISR_Restore (size_t) ;
 TYPE_1__* g_IRQHandler ;

raw_irq_handler_t IRQ_Request(u32 nIrq,raw_irq_handler_t pHndl,void *pCtx)
{
 u32 level;

 _CPU_ISR_Disable(level);
 raw_irq_handler_t old = g_IRQHandler[nIrq].pHndl;
 g_IRQHandler[nIrq].pHndl = pHndl;
 g_IRQHandler[nIrq].pCtx = pCtx;
 _CPU_ISR_Restore(level);
 return old;
}
