
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_mutexattr_t ;
struct TYPE_3__ {int kind; } ;


 int EINVAL ;




int
pthread_mutexattr_settype (pthread_mutexattr_t * attr, int kind)
{
  int result = 0;

  if ((attr != ((void*)0) && *attr != ((void*)0)))
    {
      switch (kind)
 {
 case 129:
 case 128:
 case 130:
   (*attr)->kind = kind;
   break;
 default:
   result = EINVAL;
   break;
 }
    }
  else
    {
      result = EINVAL;
    }

  return (result);
}
