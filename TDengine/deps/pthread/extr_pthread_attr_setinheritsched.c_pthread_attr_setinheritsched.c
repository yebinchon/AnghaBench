
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* pthread_attr_t ;
struct TYPE_4__ {int inheritsched; } ;


 int EINVAL ;
 int PTHREAD_EXPLICIT_SCHED ;
 int PTHREAD_INHERIT_SCHED ;
 scalar_t__ ptw32_is_attr (TYPE_1__**) ;

int
pthread_attr_setinheritsched (pthread_attr_t * attr, int inheritsched)
{
  if (ptw32_is_attr (attr) != 0)
    {
      return EINVAL;
    }

  if (PTHREAD_INHERIT_SCHED != inheritsched
      && PTHREAD_EXPLICIT_SCHED != inheritsched)
    {
      return EINVAL;
    }

  (*attr)->inheritsched = inheritsched;
  return 0;
}
