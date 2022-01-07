
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_mutexattr_t ;
struct TYPE_3__ {int robustness; } ;


 int EINVAL ;

int
pthread_mutexattr_getrobust (const pthread_mutexattr_t * attr, int * robust)
{
  int result = EINVAL;

  if ((attr != ((void*)0) && *attr != ((void*)0) && robust != ((void*)0)))
    {
      *robust = (*attr)->robustness;
      result = 0;
    }

  return (result);
}
