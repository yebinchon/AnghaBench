
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int adjustedDispPosY; } ;


 TYPE_1__ HorVer ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int __getCurrentFieldEvenOdd () ;

u32 VIDEO_GetNextField()
{
 u32 level,nextfield;

 _CPU_ISR_Disable(level);
 nextfield = __getCurrentFieldEvenOdd()^1;
 _CPU_ISR_Restore(level);

 return nextfield^(HorVer.adjustedDispPosY&0x0001);
}
