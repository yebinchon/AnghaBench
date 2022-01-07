
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int dvdcmdblk ;


 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int * __dvd_popwaitingqueueprio (int) ;
 int * __dvd_waitingqueue ;
 int __lwp_queue_isempty (int *) ;

__attribute__((used)) static dvdcmdblk* __dvd_popwaitingqueue()
{
 u32 i,level;
 dvdcmdblk *ret = ((void*)0);
 _CPU_ISR_Disable(level);
 for(i=0;i<4;i++) {
  if(!__lwp_queue_isempty(&__dvd_waitingqueue[i])) {
   _CPU_ISR_Restore(level);
   ret = __dvd_popwaitingqueueprio(i);
   return ret;
  }
 }
 _CPU_ISR_Restore(level);
 return ((void*)0);
}
