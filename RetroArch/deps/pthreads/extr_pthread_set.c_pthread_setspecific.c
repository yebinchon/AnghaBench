
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* pthread_t ;
typedef TYPE_2__* pthread_key_t ;
struct TYPE_11__ {int threadLock; scalar_t__ keys; } ;
typedef TYPE_1__ pte_thread_t ;
struct TYPE_13__ {struct TYPE_13__* nextKey; TYPE_2__* key; } ;
typedef TYPE_4__ ThreadKeyAssoc ;
struct TYPE_12__ {int key; int keyLock; int * destructor; } ;


 int EAGAIN ;
 int ENOENT ;
 scalar_t__ PTE_OS_OK ;
 scalar_t__ pte_osTlsSetValue (int ,void*) ;
 TYPE_2__* pte_selfThreadKey ;
 int pte_tkAssocCreate (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ pthread_getspecific (TYPE_2__*) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_1__* pthread_self () ;

int pthread_setspecific (pthread_key_t key, const void *value)
{
   pthread_t self;
   int result = 0;

   if (key != pte_selfThreadKey)
   {





      self = pthread_self ();
      if (self == ((void*)0))
         return ENOENT;
   }
   else
   {




      pte_thread_t * sp = (pte_thread_t *) pthread_getspecific (pte_selfThreadKey);

      if (sp == ((void*)0))
      {
         if (value == ((void*)0))
            return ENOENT;

         self = *((pthread_t *) value);
      }
      else
         self = sp;
   }

   result = 0;

   if (key != ((void*)0))
   {
      if (self != ((void*)0) && key->destructor != ((void*)0) && value != ((void*)0))
      {
         ThreadKeyAssoc *assoc;

         if (pthread_mutex_lock(&(key->keyLock)) == 0)
         {
            pte_thread_t * sp = (pte_thread_t *) self;

            (void) pthread_mutex_lock(&(sp->threadLock));

            assoc = (ThreadKeyAssoc *) sp->keys;



            while (assoc != ((void*)0))
            {



               if (assoc->key == key)
                  break;
               assoc = assoc->nextKey;
            }




            if (assoc == ((void*)0))
               result = pte_tkAssocCreate (sp, key);

            (void) pthread_mutex_unlock(&(sp->threadLock));
         }
         (void) pthread_mutex_unlock(&(key->keyLock));
      }

      if (result == 0)
      {
         if (pte_osTlsSetValue (key->key, (void *) value) != PTE_OS_OK)
            result = EAGAIN;
      }
   }

   return (result);
}
