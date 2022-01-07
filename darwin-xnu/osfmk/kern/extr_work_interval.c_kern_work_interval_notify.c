
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* thread_t ;
typedef int task_t ;
struct work_interval {scalar_t__ wi_id; scalar_t__ wi_creator_uniqueid; scalar_t__ wi_creator_pidversion; } ;
struct kern_work_interval_args {scalar_t__ work_interval_id; int urgency; } ;
typedef int spl_t ;
typedef int kern_return_t ;
struct TYPE_6__ {struct work_interval* th_work_interval; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int assert (int) ;
 int current_task () ;
 TYPE_1__* current_thread () ;
 scalar_t__ get_task_uniqueid (int ) ;
 scalar_t__ get_task_version (int ) ;
 int machine_work_interval_notify (TYPE_1__*,struct kern_work_interval_args*) ;
 int splsched () ;
 int splx (int ) ;
 int thread_get_urgency (TYPE_1__*,int *,int *) ;

kern_return_t
kern_work_interval_notify(thread_t thread, struct kern_work_interval_args* kwi_args)
{
 assert(thread == current_thread());
 assert(kwi_args->work_interval_id != 0);

 struct work_interval *work_interval = thread->th_work_interval;

 if (work_interval == ((void*)0) ||
     work_interval->wi_id != kwi_args->work_interval_id) {

  return (KERN_INVALID_ARGUMENT);
 }

 task_t notifying_task = current_task();

 if (work_interval->wi_creator_uniqueid != get_task_uniqueid(notifying_task) ||
     work_interval->wi_creator_pidversion != get_task_version(notifying_task)) {

  return (KERN_INVALID_ARGUMENT);
 }

 spl_t s = splsched();


 uint64_t urgency_param1, urgency_param2;
 kwi_args->urgency = thread_get_urgency(thread, &urgency_param1, &urgency_param2);

 splx(s);


 machine_work_interval_notify(thread, kwi_args);

 return (KERN_SUCCESS);
}
