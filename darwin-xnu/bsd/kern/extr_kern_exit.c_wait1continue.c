
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct uthread* uthread_t ;
typedef int thread_t ;
struct wait4_nocancel_args {int dummy; } ;
struct _wait4_data {int* retval; struct wait4_nocancel_args* args; } ;
struct TYPE_2__ {struct _wait4_data uus_wait4_data; } ;
struct uthread {TYPE_1__ uu_save; } ;
typedef int proc_t ;


 int current_proc () ;
 int current_thread () ;
 scalar_t__ get_bsdthread_info (int ) ;
 int wait4_nocancel (int ,struct wait4_nocancel_args*,int*) ;

int
wait1continue(int result)
{
 proc_t p;
 thread_t thread;
 uthread_t uth;
 struct _wait4_data *wait4_data;
 struct wait4_nocancel_args *uap;
 int *retval;

 if (result)
  return(result);

 p = current_proc();
 thread = current_thread();
 uth = (struct uthread *)get_bsdthread_info(thread);

 wait4_data = &uth->uu_save.uus_wait4_data;
 uap = wait4_data->args;
 retval = wait4_data->retval;
 return(wait4_nocancel(p, uap, retval));
}
