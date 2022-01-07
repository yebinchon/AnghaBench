
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int thread_t ;
struct proc {int dummy; } ;
struct bsdthread_terminate_args {int sem; int port; int freesize; int stackaddr; } ;
typedef int int32_t ;
struct TYPE_2__ {int (* bsdthread_terminate ) (struct proc*,int ,int ,int ,int ,int *) ;} ;


 int THREAD_TAG_WORKQUEUE ;
 int current_thread () ;
 int get_bsdthread_info (int ) ;
 TYPE_1__* pthread_functions ;
 int stub1 (struct proc*,int ,int ,int ,int ,int *) ;
 int thread_get_tag (int ) ;
 int workq_thread_terminate (struct proc*,int ) ;

int
bsdthread_terminate(struct proc *p, struct bsdthread_terminate_args *uap, int32_t *retval)
{
 thread_t th = current_thread();
 if (thread_get_tag(th) & THREAD_TAG_WORKQUEUE) {
  workq_thread_terminate(p, get_bsdthread_info(th));
 }
 return pthread_functions->bsdthread_terminate(p, uap->stackaddr, uap->freesize, uap->port, uap->sem, retval);
}
