
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* pthread_key_t ;
struct TYPE_8__ {int threadLock; } ;
typedef TYPE_2__ pte_thread_t ;
struct TYPE_9__ {TYPE_2__* thread; } ;
typedef TYPE_3__ ThreadKeyAssoc ;
struct TYPE_7__ {int keyLock; int * destructor; int key; int * threads; } ;


 int EBUSY ;
 int free (TYPE_1__*) ;
 int pte_osThreadSleep (int) ;
 int pte_osTlsFree (int ) ;
 int pte_tkAssocDestroy (TYPE_3__*) ;
 int pthread_mutex_destroy (int *) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int pthread_key_delete (pthread_key_t key)
{
   int result = 0;

   if (key != ((void*)0))
   {
      if (key->threads != ((void*)0) &&
            key->destructor != ((void*)0) &&
            pthread_mutex_lock (&(key->keyLock)) == 0)
      {
         ThreadKeyAssoc *assoc;
         while ((assoc = (ThreadKeyAssoc *) key->threads) != ((void*)0))
         {
            pte_thread_t * thread = assoc->thread;


            if (assoc == ((void*)0))
               break;

            if (pthread_mutex_lock (&(thread->threadLock)) == 0)
            {






               pte_tkAssocDestroy (assoc);
               (void) pthread_mutex_unlock (&(thread->threadLock));
            }
            else
            {

               pte_tkAssocDestroy (assoc);
            }
         }
         pthread_mutex_unlock (&(key->keyLock));
      }

      pte_osTlsFree (key->key);
      if (key->destructor != ((void*)0))
      {

         while (EBUSY == (result = pthread_mutex_destroy (&(key->keyLock))))
            pte_osThreadSleep(1);
      }

      free (key);
   }

   return (result);
}
