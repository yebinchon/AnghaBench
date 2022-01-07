
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __ARQMFreeBytes ;
 int __ARQMStackLocation ;
 scalar_t__* __ARQMStackPointer ;

void ARQM_Pop()
{
 u32 level;

 _CPU_ISR_Disable(level);

 if(__ARQMStackLocation>1) {
  __ARQMFreeBytes += (__ARQMStackPointer[__ARQMStackLocation]-__ARQMStackPointer[__ARQMStackLocation-1]);
  __ARQMStackLocation--;
 }
 _CPU_ISR_Restore(level);
}
