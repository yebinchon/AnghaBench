
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int * __dvd_waitingqueue ;
 int __lwp_queue_isempty (int *) ;

__attribute__((used)) static s32 __dvd_checkwaitingqueue()
{
 u32 i;
 u32 level;

 _CPU_ISR_Disable(level);
 for(i=0;i<4;i++) {
  if(!__lwp_queue_isempty(&__dvd_waitingqueue[i])) break;
 }
 _CPU_ISR_Restore(level);
 return (i<4);
}
