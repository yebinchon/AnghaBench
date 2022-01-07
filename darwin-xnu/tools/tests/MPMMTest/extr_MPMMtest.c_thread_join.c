
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tid; int pid; } ;
typedef TYPE_1__ thread_id_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int err (int,char*,int) ;
 int printf (char*,int) ;
 scalar_t__ pthread_join (int,int *) ;
 scalar_t__ threaded ;
 int verbose ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static void
thread_join(thread_id_t *thread) {
 if (threaded) {
  kern_return_t ret;
  if (verbose > 1)
   printf("joining thread %p\n", thread->tid);
  ret = pthread_join(thread->tid, ((void*)0));
  if (ret != KERN_SUCCESS)
   err(1, "pthread_join(%p)", thread->tid);
 } else {
  int stat;
  if (verbose > 1)
   printf("waiting for pid %d\n", thread->pid);
  waitpid(thread->pid, &stat, 0);
 }
}
