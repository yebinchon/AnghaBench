
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sema; } ;
typedef TYPE_1__ sema_st ;
typedef int sem_t ;
typedef int s32 ;


 int __lwp_sema_flush (int *,int) ;
 int __lwp_sema_free (TYPE_1__*) ;
 TYPE_1__* __lwp_sema_open (int ) ;
 int __lwp_thread_dispatchenable () ;

s32 LWP_SemDestroy(sem_t sem)
{
 sema_st *lwp_sem = __lwp_sema_open(sem);
 if(!lwp_sem) return -1;

 __lwp_sema_flush(&lwp_sem->sema,-1);
 __lwp_thread_dispatchenable();

 __lwp_sema_free(lwp_sem);
 return 0;
}
