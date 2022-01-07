
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_mutexattr_t ;
struct TYPE_3__ {int kind; } ;


 int EINVAL ;

int
pthread_mutexattr_gettype (const pthread_mutexattr_t * attr, int *kind)
{
  int result = 0;

  if (attr != ((void*)0) && *attr != ((void*)0) && kind != ((void*)0))
    {
      *kind = (*attr)->kind;
    }
  else
    {
      result = EINVAL;
    }

  return (result);
}
