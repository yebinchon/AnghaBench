
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* pthread_mutex_t ;
struct TYPE_4__ {scalar_t__ kind; scalar_t__ recursive_count; int handle; int lock_idx; int * ownerThread; } ;


 int EINVAL ;
 int EPERM ;
 int PTE_ATOMIC_EXCHANGE (int *,int ) ;
 scalar_t__ PTE_OS_OK ;
 TYPE_1__* PTHREAD_ERRORCHECK_MUTEX_INITIALIZER ;
 scalar_t__ PTHREAD_MUTEX_NORMAL ;
 scalar_t__ PTHREAD_MUTEX_RECURSIVE ;
 scalar_t__ pte_osSemaphorePost (int ,int) ;
 scalar_t__ pthread_equal (int *,int ) ;
 int pthread_self () ;

int pthread_mutex_unlock (pthread_mutex_t * mutex)
{
   int result = 0;
   pthread_mutex_t mx = *mutex;
   if (mx < PTHREAD_ERRORCHECK_MUTEX_INITIALIZER)
   {
      if (mx->kind == PTHREAD_MUTEX_NORMAL)
      {
         int idx;

         idx = PTE_ATOMIC_EXCHANGE (&mx->lock_idx,0);
         if (idx != 0)
         {
            if (idx < 0)
            {



               if (pte_osSemaphorePost(mx->handle,1) != PTE_OS_OK)
                  result = EINVAL;
            }
         }
         else
         {



            result = EPERM;
         }
      }
      else
      {
         if (pthread_equal (mx->ownerThread, pthread_self ()))
         {
            if (mx->kind != PTHREAD_MUTEX_RECURSIVE
                  || 0 == --mx->recursive_count)
            {
               mx->ownerThread = ((void*)0);

               if (PTE_ATOMIC_EXCHANGE (&mx->lock_idx,0) < 0)
               {
                  if (pte_osSemaphorePost(mx->handle,1) != PTE_OS_OK)
                     result = EINVAL;
               }
            }
         }
         else
            result = EPERM;
      }
   }
   else
      result = EINVAL;

   return (result);
}
