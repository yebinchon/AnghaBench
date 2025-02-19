
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct second_thread_args {scalar_t__ iterations; scalar_t__ last_poke_time; int cpuno; double* wakeup_second_jitter_arr; double too_much; int return_semaphore; int woke_on_same_cpu; int wakeup_semaphore; int pol; } ;
typedef scalar_t__ kern_return_t ;


 int DBG_FUNC_NONE ;
 scalar_t__ KERN_SUCCESS ;
 int _os_cpu_number () ;
 int errx (int,char*,scalar_t__,...) ;
 int exit (int) ;
 int kdebug_trace (int,int ,int ,int ,int ) ;
 scalar_t__ mach_absolute_time () ;
 int printf (char*) ;
 scalar_t__ semaphore_signal (int ) ;
 scalar_t__ semaphore_wait (int ) ;
 int thread_setup (int ) ;

void *
second_thread(void *args)
{
 struct second_thread_args *secargs = (struct second_thread_args *)args;
 int res;
 uint64_t i;
 kern_return_t kret;
 uint64_t wake_time;
 int cpuno;


 res = thread_setup(secargs->pol);
 if (res != 0) {
  printf("Couldn't set thread policy.\n");
  exit(1);
 }





 for (i = 0; i < secargs->iterations; i++) {


  kret = semaphore_wait(secargs->wakeup_semaphore);
  if (kret != KERN_SUCCESS) {
   errx(1, "semaphore_wait %d", kret);
  }

  wake_time = mach_absolute_time();
  cpuno = _os_cpu_number();
  if (wake_time < secargs->last_poke_time) {


   errx(1, "woke in past %llu (%d) < %llu (%d)", wake_time, cpuno, secargs->last_poke_time, secargs->cpuno);
  }

  if (cpuno == secargs->cpuno) {
   secargs->woke_on_same_cpu++;
  }

  secargs->wakeup_second_jitter_arr[i] = (double)(wake_time - secargs->last_poke_time);


  if (secargs->wakeup_second_jitter_arr[i] >= secargs->too_much) {
   kdebug_trace(0xeeeee4 | DBG_FUNC_NONE, 0, 0, 0, 0);
  }

  kret = semaphore_signal(secargs->return_semaphore);
  if (kret != KERN_SUCCESS) {
   errx(1, "semaphore_signal %d", kret);
  }

 }

 return ((void*)0);
}
