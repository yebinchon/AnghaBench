
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef long long s64 ;
typedef int s32 ;
struct TYPE_4__ {int state; } ;
typedef TYPE_1__ dvdcmdblk ;


 int DVD_SeekAbsAsyncPrio (TYPE_1__*,long long,int ,int) ;
 int LWP_ThreadSleep (int ) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __dvd_seeksynccb ;
 int __dvd_wait_queue ;

s32 DVD_SeekPrio(dvdcmdblk *block,s64 offset,s32 prio)
{
 u32 level;
 s32 state,ret;
 if(offset>0 && offset<8511160320LL) {
  ret = DVD_SeekAbsAsyncPrio(block,offset,__dvd_seeksynccb,prio);
  if(!ret) return -1;

  _CPU_ISR_Disable(level);
  do {
   state = block->state;
   if(state==0) ret = 0;
   else if(state==-1) ret = -1;
   else if(state==10) ret = -3;
   else LWP_ThreadSleep(__dvd_wait_queue);
  } while(state!=0 && state!=-1 && state!=10);
  _CPU_ISR_Restore(level);

  return ret;
 }
 return -1;
}
