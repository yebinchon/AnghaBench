
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sched_param {int dummy; } ;
typedef TYPE_1__* pthread_attr_t ;
struct TYPE_4__ {int param; } ;


 int EINVAL ;
 int memcpy (struct sched_param*,int *,int) ;
 scalar_t__ pte_is_attr (TYPE_1__* const*) ;

int pthread_attr_getschedparam (const pthread_attr_t * attr,
      struct sched_param *param)
{
   if (pte_is_attr (attr) != 0 || param == ((void*)0))
      return EINVAL;

   memcpy (param, &(*attr)->param, sizeof (*param));
   return 0;
}
