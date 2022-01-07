
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int id; } ;
struct TYPE_8__ {TYPE_1__ object; int sema; } ;
typedef TYPE_3__ sema_st ;
typedef int sem_t ;
typedef int s32 ;
struct TYPE_7__ {int ret_code; } ;
struct TYPE_9__ {TYPE_2__ wait; } ;


 int EAGAIN ;
 int ETIMEDOUT ;




 int LWP_THREADQ_NOTIMEOUT ;
 int TRUE ;
 TYPE_3__* __lwp_sema_open (int ) ;
 int __lwp_sema_seize (int *,int ,int ,int ) ;
 int __lwp_thread_dispatchenable () ;
 TYPE_4__* _thr_executing ;

s32 LWP_SemWait(sem_t sem)
{
 sema_st *lwp_sem = __lwp_sema_open(sem);
 if(!lwp_sem) return -1;

 __lwp_sema_seize(&lwp_sem->sema,lwp_sem->object.id,TRUE,LWP_THREADQ_NOTIMEOUT);
 __lwp_thread_dispatchenable();

 switch(_thr_executing->wait.ret_code) {
  case 130:
   break;
  case 128:
   return EAGAIN;
  case 131:
   return EAGAIN;
  case 129:
   return ETIMEDOUT;

 }
 return 0;
}
