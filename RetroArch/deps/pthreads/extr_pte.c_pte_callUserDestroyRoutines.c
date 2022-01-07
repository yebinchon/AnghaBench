
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ pthread_t ;
typedef TYPE_1__* pthread_key_t ;
struct TYPE_6__ {int threadLock; scalar_t__ nextAssoc; scalar_t__ keys; } ;
typedef TYPE_2__ pte_thread_t ;
struct TYPE_7__ {TYPE_1__* key; scalar_t__ nextKey; } ;
typedef TYPE_3__ ThreadKeyAssoc ;
struct TYPE_5__ {void (* destructor ) (void*) ;int keyLock; int key; } ;


 scalar_t__ EBUSY ;
 int PTHREAD_DESTRUCTOR_ITERATIONS ;
 int pte_osThreadSleep (int) ;
 void* pte_osTlsGetValue (int ) ;
 int pte_osTlsSetValue (int ,int *) ;
 int pte_tkAssocDestroy (TYPE_3__*) ;
 int pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_trylock (int *) ;
 int pthread_mutex_unlock (int *) ;

void
pte_callUserDestroyRoutines (pthread_t thread)
{
   int assocsRemaining;
   int iterations = 0;
   ThreadKeyAssoc *assoc = ((void*)0);
   pte_thread_t *sp = (pte_thread_t *) thread;

   if (!thread)
      return;







   do
   {
      assocsRemaining = 0;
      iterations++;

      (void) pthread_mutex_lock(&(sp->threadLock));
      sp->nextAssoc = sp->keys;
      (void) pthread_mutex_unlock(&(sp->threadLock));

      for (;;)
      {
         void * value;
         pthread_key_t k;
         void (*destructor) (void *);






         (void) pthread_mutex_lock(&(sp->threadLock));

         if ((assoc = (ThreadKeyAssoc *)sp->nextAssoc) == ((void*)0))
         {

            pthread_mutex_unlock(&(sp->threadLock));
            break;
         }
         else
         {
            if (pthread_mutex_trylock(&(assoc->key->keyLock)) == EBUSY)
            {
               pthread_mutex_unlock(&(sp->threadLock));
               pte_osThreadSleep(1);





               continue;
            }
         }



         sp->nextAssoc = assoc->nextKey;
         k = assoc->key;
         destructor = k->destructor;
         value = pte_osTlsGetValue(k->key);
         pte_osTlsSetValue (k->key, ((void*)0));


         if (value && iterations <= PTHREAD_DESTRUCTOR_ITERATIONS)
         {







            (void) pthread_mutex_unlock(&(sp->threadLock));
            (void) pthread_mutex_unlock(&(k->keyLock));

            assocsRemaining++;





            destructor (value);
         }
         else
         {




            pte_tkAssocDestroy (assoc);
            (void) pthread_mutex_unlock(&(sp->threadLock));
            (void) pthread_mutex_unlock(&(k->keyLock));
         }
      }
   }while (assocsRemaining);
}
