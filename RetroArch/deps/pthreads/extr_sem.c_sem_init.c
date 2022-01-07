
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sem_t ;
typedef scalar_t__ pte_osResult ;
struct TYPE_4__ {unsigned int value; int lock; int sem; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 int EPERM ;
 scalar_t__ PTE_OS_OK ;
 scalar_t__ SEM_VALUE_MAX ;
 scalar_t__ calloc (int,int) ;
 int errno ;
 int free (TYPE_1__*) ;
 scalar_t__ pte_osSemaphoreCreate (int ,int *) ;
 int pthread_mutex_destroy (int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;

int
sem_init (sem_t * sem, int pshared, unsigned int value)
{
   int result = 0;
   sem_t s = ((void*)0);

   if (pshared != 0)
   {




      result = EPERM;
   }
   else if (value > (unsigned int)SEM_VALUE_MAX)
   {
      result = EINVAL;
   }
   else
   {
      s = (sem_t) calloc (1, sizeof (*s));

      if (((void*)0) == s)
      {
         result = ENOMEM;
      }
      else
      {

         s->value = value;
         if (pthread_mutex_init(&s->lock, ((void*)0)) == 0)
         {

            pte_osResult osResult = pte_osSemaphoreCreate(0, &s->sem);



            if (osResult != PTE_OS_OK)
            {
               (void) pthread_mutex_destroy(&s->lock);
               result = ENOSPC;
            }

         }
         else
         {
            result = ENOSPC;
         }

         if (result != 0)
         {
            free(s);
         }
      }
   }

   if (result != 0)
   {
      errno = result;
      return -1;
   }

   *sem = s;

   return 0;
}
