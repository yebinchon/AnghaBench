
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {long long length; long long num_threads; int test_argv; int test_argc; } ;
struct TYPE_3__ {int (* execute ) (int,int,long long,int ,int ) ;} ;


 TYPE_2__ args ;
 int pthread_cond_signal (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int ready_thread_count ;
 int ready_thread_count_lock ;
 int start_cvar ;
 int stub1 (int,int,long long,int ,int ) ;
 TYPE_1__ test ;
 int threads_ready_cvar ;

__attribute__((used)) static void* thread_setup(void *arg) {
  int my_index = (int)arg;
  long long work_size = args.length / args.num_threads;
  int work_remainder = args.length % args.num_threads;

  if(work_remainder > my_index) {
    work_size++;
  }

  pthread_mutex_lock(&ready_thread_count_lock);
  ready_thread_count++;
  if(ready_thread_count == args.num_threads)
    pthread_cond_signal(&threads_ready_cvar);
  pthread_cond_wait(&start_cvar, &ready_thread_count_lock);
  pthread_mutex_unlock(&ready_thread_count_lock);
  test.execute(my_index, args.num_threads, work_size, args.test_argc, args.test_argv);
  return ((void*)0);
}
