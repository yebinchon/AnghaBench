
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int __ARQChunkSize ;

void ARQ_SetChunkSize(u32 size)
{
 u32 level;
 _CPU_ISR_Disable(level);
 __ARQChunkSize = (size+31)&~31;
 _CPU_ISR_Restore(level);
}
