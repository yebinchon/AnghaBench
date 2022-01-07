
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct uthread* uthread_t ;
typedef int thread_t ;
struct waitid_nocancel_args {int dummy; } ;
struct _waitid_data {int* retval; struct waitid_nocancel_args* args; } ;
struct TYPE_2__ {struct _waitid_data uus_waitid_data; } ;
struct uthread {TYPE_1__ uu_save; } ;
typedef int proc_t ;


 int current_proc () ;
 int current_thread () ;
 scalar_t__ get_bsdthread_info (int ) ;
 int waitid_nocancel (int ,struct waitid_nocancel_args*,int*) ;

int
waitidcontinue(int result)
{
 proc_t p;
 thread_t thread;
 uthread_t uth;
 struct _waitid_data *waitid_data;
 struct waitid_nocancel_args *uap;
 int *retval;

 if (result)
  return (result);

 p = current_proc();
 thread = current_thread();
 uth = (struct uthread *)get_bsdthread_info(thread);

 waitid_data = &uth->uu_save.uus_waitid_data;
 uap = waitid_data->args;
 retval = waitid_data->retval;
 return(waitid_nocancel(p, uap, retval));
}
