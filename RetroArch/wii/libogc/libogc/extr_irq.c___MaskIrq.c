
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int __SetInterrupts (int,int) ;
 int currIrqMask ;
 int prevIrqMask ;

void __MaskIrq(u32 nMask)
{
 u32 level;
 u32 mask;

 _CPU_ISR_Disable(level);
 mask = (nMask&~(prevIrqMask|currIrqMask));
 nMask = (nMask|prevIrqMask);
 prevIrqMask = nMask;
 while((mask=__SetInterrupts(mask,(nMask|currIrqMask)))!=0);
 _CPU_ISR_Restore(level);
}
