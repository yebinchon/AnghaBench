
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_barrierattr_t ;
struct TYPE_3__ {int pshared; } ;


 int ENOMEM ;
 int PTHREAD_PROCESS_PRIVATE ;
 int calloc (int,int) ;

int pthread_barrierattr_init (pthread_barrierattr_t * attr)
{
   int result = 0;
   pthread_barrierattr_t ba = (pthread_barrierattr_t) calloc (1, sizeof (*ba));

   if (ba == ((void*)0))
      result = ENOMEM;
   else
      ba->pshared = PTHREAD_PROCESS_PRIVATE;

   *attr = ba;

   return (result);
}
