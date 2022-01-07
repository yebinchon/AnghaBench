
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int _CPU_ISR_Disable (scalar_t__) ;
 int _CPU_ISR_Restore (scalar_t__) ;
 scalar_t__* __ARBlockLen ;
 int __ARFreeBlocks ;
 scalar_t__ __ARStackPointer ;

u32 AR_Free(u32 *len)
{
 u32 level;

 _CPU_ISR_Disable(level);
 __ARBlockLen--;
 if(len) *len = *__ARBlockLen;
 __ARStackPointer -= *__ARBlockLen;
 __ARFreeBlocks++;
 _CPU_ISR_Restore(level);

 return __ARStackPointer;
}
