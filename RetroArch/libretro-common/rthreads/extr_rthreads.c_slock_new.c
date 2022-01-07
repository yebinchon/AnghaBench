
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ slock_t ;


 int InitializeCriticalSection (int *) ;
 scalar_t__ calloc (int,int) ;
 int free (TYPE_1__*) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;

slock_t *slock_new(void)
{
   bool mutex_created = 0;
   slock_t *lock = (slock_t*)calloc(1, sizeof(*lock));
   if (!lock)
      return ((void*)0);





   mutex_created = (pthread_mutex_init(&lock->lock, ((void*)0)) == 0);


   if (!mutex_created)
      goto error;

   return lock;

error:
   free(lock);
   return ((void*)0);
}
