
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* pthread_attr_t ;
struct TYPE_4__ {int inheritsched; } ;


 int EINVAL ;
 scalar_t__ ptw32_is_attr (TYPE_1__* const*) ;

int
pthread_attr_getinheritsched (const pthread_attr_t * attr, int *inheritsched)
{
  if (ptw32_is_attr (attr) != 0 || inheritsched == ((void*)0))
    {
      return EINVAL;
    }

  *inheritsched = (*attr)->inheritsched;
  return 0;
}
