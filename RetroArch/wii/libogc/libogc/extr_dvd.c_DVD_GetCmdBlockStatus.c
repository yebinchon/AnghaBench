
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int s32 ;
struct TYPE_3__ {int state; } ;
typedef TYPE_1__ dvdcmdblk ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;

s32 DVD_GetCmdBlockStatus(dvdcmdblk *block)
{
 u32 level;
 s32 ret = -1;

 _CPU_ISR_Disable(level);
 if(block) {
  if((ret=block->state)==0x0003) ret = 1;
 }
 _CPU_ISR_Restore(level);
 return ret;
}
