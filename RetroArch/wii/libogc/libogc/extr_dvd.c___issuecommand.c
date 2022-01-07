
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int s32 ;
struct TYPE_4__ {int cmd; int state; int len; int buf; } ;
typedef TYPE_1__ dvdcmdblk ;


 int DCInvalidateRange (int ,int ) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 scalar_t__ __dvd_autoinvalidation ;
 int __dvd_executing ;
 int __dvd_pushwaitingqueue (int ,TYPE_1__*) ;
 int __dvd_stateready () ;

s32 __issuecommand(s32 prio,dvdcmdblk *block)
{
 s32 ret;
 u32 level;
 if(__dvd_autoinvalidation &&
  (block->cmd==0x0001 || block->cmd==0x00004
  || block->cmd==0x0005 || block->cmd==0x000e)) DCInvalidateRange(block->buf,block->len);

 _CPU_ISR_Disable(level);
 block->state = 0x0002;
 ret = __dvd_pushwaitingqueue(prio,block);
 if(!__dvd_executing) __dvd_stateready();
 _CPU_ISR_Restore(level);
 return ret;
}
