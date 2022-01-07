
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t s32 ;
struct TYPE_3__ {int node; } ;
typedef TYPE_1__ dvdcmdblk ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int * __dvd_waitingqueue ;
 int __lwp_queue_appendI (int *,int *) ;

__attribute__((used)) static s32 __dvd_pushwaitingqueue(s32 prio,dvdcmdblk *block)
{
 u32 level;
 _CPU_ISR_Disable(level);
 __lwp_queue_appendI(&__dvd_waitingqueue[prio],&block->node);
 _CPU_ISR_Restore(level);
 return 1;
}
