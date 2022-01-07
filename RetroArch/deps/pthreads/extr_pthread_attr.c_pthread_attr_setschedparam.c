
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sched_param {int sched_priority; } ;
typedef TYPE_1__* pthread_attr_t ;
struct TYPE_4__ {int param; } ;


 int EINVAL ;
 int SCHED_OTHER ;
 int memcpy (int *,struct sched_param const*,int) ;
 scalar_t__ pte_is_attr (TYPE_1__**) ;
 int sched_get_priority_max (int ) ;
 int sched_get_priority_min (int ) ;

int pthread_attr_setschedparam (pthread_attr_t * attr,
                            const struct sched_param *param)
{
   int priority;

   if (pte_is_attr (attr) != 0 || param == ((void*)0))
      return EINVAL;

   priority = param->sched_priority;


   if (priority < sched_get_priority_min (SCHED_OTHER) ||
         priority > sched_get_priority_max (SCHED_OTHER))
   {
      return EINVAL;
   }

   memcpy (&(*attr)->param, param, sizeof (*param));
   return 0;
}
