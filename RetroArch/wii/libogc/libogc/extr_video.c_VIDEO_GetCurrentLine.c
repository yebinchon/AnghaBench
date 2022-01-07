
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int nhlines; } ;


 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int __getCurrentHalfLine () ;
 TYPE_1__* currTiming ;

u32 VIDEO_GetCurrentLine()
{
 u32 level,curr_hl = 0;

 _CPU_ISR_Disable(level);
 curr_hl = __getCurrentHalfLine();
 _CPU_ISR_Restore(level);

 if(curr_hl>=currTiming->nhlines) curr_hl -=currTiming->nhlines;
 curr_hl >>= 1;

 return curr_hl;
}
