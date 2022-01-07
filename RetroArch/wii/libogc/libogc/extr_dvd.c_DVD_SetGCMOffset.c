
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int s64 ;
typedef int s32 ;
struct TYPE_4__ {int state; int txdsize; } ;
typedef TYPE_1__ dvdcmdblk ;


 int DVD_SetGCMOffsetAsync (TYPE_1__*,int ,int ) ;
 int LWP_ThreadSleep (int ) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __dvd_setgcmsynccb ;
 int __dvd_wait_queue ;

s32 DVD_SetGCMOffset(dvdcmdblk *block,s64 offset)
{
 s32 ret,state;
 u32 level;
 ret = DVD_SetGCMOffsetAsync(block,offset,__dvd_setgcmsynccb);

 _CPU_ISR_Disable(level);
 do {
  state = block->state;
  if(state==0 || state==-1) ret = -1;
  else if(state==10) ret = block->txdsize;
  else LWP_ThreadSleep(__dvd_wait_queue);
 } while(state!=0 && state!=-1 && state!=10);
 _CPU_ISR_Restore(level);

 return ret;
}
