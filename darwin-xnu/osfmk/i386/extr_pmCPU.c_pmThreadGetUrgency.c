
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int next_thread; } ;


 int THREAD_URGENCY_REAL_TIME ;
 TYPE_1__* current_processor () ;
 int thread_get_urgency (int ,int *,int *) ;

__attribute__((used)) static int
pmThreadGetUrgency(uint64_t *rt_period, uint64_t *rt_deadline)
{
 int urgency;
 uint64_t arg1, arg2;

 urgency = thread_get_urgency(current_processor()->next_thread, &arg1, &arg2);

 if (urgency == THREAD_URGENCY_REAL_TIME) {
  if (rt_period != ((void*)0))
   *rt_period = arg1;

  if (rt_deadline != ((void*)0))
   *rt_deadline = arg2;
 }

 return(urgency);
}
