
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t s32 ;
typedef int dvdcmdblk ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int * __dvd_waitingqueue ;
 scalar_t__ __lwp_queue_firstnodeI (int *) ;

__attribute__((used)) static dvdcmdblk* __dvd_popwaitingqueueprio(s32 prio)
{
 u32 level;
 dvdcmdblk *ret = ((void*)0);
 _CPU_ISR_Disable(level);
 ret = (dvdcmdblk*)__lwp_queue_firstnodeI(&__dvd_waitingqueue[prio]);
 _CPU_ISR_Restore(level);
 return ret;
}
