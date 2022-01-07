
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ object; int sema; } ;
typedef TYPE_2__ sema_st ;
typedef int sem_t ;
typedef int s32 ;


 TYPE_2__* __lwp_sema_open (int ) ;
 int __lwp_sema_surrender (int *,int ) ;
 int __lwp_thread_dispatchenable () ;

s32 LWP_SemPost(sem_t sem)
{
 sema_st *lwp_sem = __lwp_sema_open(sem);
 if(!lwp_sem) return -1;

 __lwp_sema_surrender(&lwp_sem->sema,lwp_sem->object.id);
 __lwp_thread_dispatchenable();

 return 0;
}
