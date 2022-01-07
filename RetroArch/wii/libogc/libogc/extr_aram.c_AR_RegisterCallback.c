
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int ARCallback ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __ARDmaCallback ;

ARCallback AR_RegisterCallback(ARCallback callback)
{
 u32 level;
 ARCallback old;

 _CPU_ISR_Disable(level);
 old = __ARDmaCallback;
 __ARDmaCallback = callback;
 _CPU_ISR_Restore(level);
 return old;
}
