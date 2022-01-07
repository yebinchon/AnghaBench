
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef TYPE_2__* thread_t ;
typedef int kern_return_t ;
struct TYPE_6__ {TYPE_1__* th_work_interval; } ;
struct TYPE_5__ {scalar_t__ wi_id; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int thread_set_work_interval (TYPE_2__*,int *) ;

kern_return_t
kern_work_interval_destroy(thread_t thread, uint64_t work_interval_id)
{
 if (work_interval_id == 0)
  return KERN_INVALID_ARGUMENT;

 if (thread->th_work_interval == ((void*)0) ||
     thread->th_work_interval->wi_id != work_interval_id) {

  return (KERN_INVALID_ARGUMENT);
 }

 thread_set_work_interval(thread, ((void*)0));

 return KERN_SUCCESS;
}
