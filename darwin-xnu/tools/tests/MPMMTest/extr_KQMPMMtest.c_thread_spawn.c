
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tid; scalar_t__ pid; } ;
typedef TYPE_1__ thread_id_t ;
typedef scalar_t__ kern_return_t ;


 int err (int,char*) ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int printf (char*,scalar_t__,...) ;
 scalar_t__ pthread_create (scalar_t__*,int *,void* (*) (void*),void*) ;
 scalar_t__ threaded ;
 scalar_t__ verbose ;

__attribute__((used)) static void
thread_spawn(thread_id_t *thread, void *(fn)(void *), void *arg) {
 if (threaded) {
  kern_return_t ret;
  ret = pthread_create(
    &thread->tid,
    ((void*)0),
    fn,
    arg);
  if (ret != 0)
   err(1, "pthread_create()");
  if (verbose)
   printf("created pthread %p\n", thread->tid);
 } else {
  thread->pid = fork();
  if (thread->pid == 0) {
   if (verbose)
    printf("calling %p(%p)\n", fn, arg);
   fn(arg);
   exit(0);
  }
  if (verbose)
   printf("forked pid %d\n", thread->pid);
 }
}
