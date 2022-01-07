
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* pthread_mutexattr_t ;
typedef TYPE_2__* pthread_mutex_t ;
struct TYPE_6__ {int handle; int * ownerThread; int kind; scalar_t__ recursive_count; scalar_t__ lock_idx; } ;
struct TYPE_5__ {int kind; } ;


 int EINVAL ;
 int ENOMEM ;
 int PTHREAD_MUTEX_DEFAULT ;
 scalar_t__ calloc (int,int) ;
 int pte_osSemaphoreCreate (int ,int *) ;

int pthread_mutex_init (pthread_mutex_t * mutex, const pthread_mutexattr_t * attr)
{
   int result = 0;
   pthread_mutex_t mx;

   if (mutex == ((void*)0))
      return EINVAL;

   mx = (pthread_mutex_t) calloc (1, sizeof (*mx));

   if (mx == ((void*)0))
      result = ENOMEM;
   else
   {
      mx->lock_idx = 0;
      mx->recursive_count = 0;
      mx->kind = (attr == ((void*)0) || *attr == ((void*)0)
            ? PTHREAD_MUTEX_DEFAULT : (*attr)->kind);
      mx->ownerThread = ((void*)0);

      pte_osSemaphoreCreate(0,&mx->handle);

   }

   *mutex = mx;

   return (result);
}
