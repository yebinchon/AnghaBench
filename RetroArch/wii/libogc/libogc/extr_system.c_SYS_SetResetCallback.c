
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ resetcallback ;


 int IRQMASK (int ) ;
 int IRQ_PI_RSW ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __MaskIrq (int ) ;
 scalar_t__ __RSWCallback ;
 int __UnmaskIrq (int ) ;
 int* _piReg ;

resetcallback SYS_SetResetCallback(resetcallback cb)
{
 u32 level;
 resetcallback old;

 _CPU_ISR_Disable(level);
 old = __RSWCallback;
 __RSWCallback = cb;







 _CPU_ISR_Restore(level);
 return old;
}
