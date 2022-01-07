
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int * p; } ;
struct TYPE_11__ {scalar_t__ keys; int threadLock; TYPE_2__ ptHandle; } ;
typedef TYPE_1__ ptw32_thread_t ;
typedef int ptw32_mcs_local_node_t ;
typedef TYPE_2__ pthread_t ;
typedef TYPE_3__* pthread_key_t ;
struct TYPE_14__ {struct TYPE_14__* nextKey; TYPE_3__* key; } ;
typedef TYPE_4__ ThreadKeyAssoc ;
struct TYPE_13__ {int key; int keyLock; int * destructor; } ;
typedef int LPVOID ;


 int EAGAIN ;
 int ENOENT ;
 int TlsSetValue (int ,int ) ;
 scalar_t__ pthread_getspecific (TYPE_3__*) ;
 TYPE_2__ pthread_self () ;
 int ptw32_mcs_lock_acquire (int *,int *) ;
 int ptw32_mcs_lock_release (int *) ;
 TYPE_3__* ptw32_selfThreadKey ;
 int ptw32_tkAssocCreate (TYPE_1__*,TYPE_3__*) ;

int
pthread_setspecific (pthread_key_t key, const void *value)
{
  pthread_t self;
  int result = 0;

  if (key != ptw32_selfThreadKey)
    {





      self = pthread_self ();
      if (self.p == ((void*)0))
 {
   return ENOENT;
 }
    }
  else
    {




      ptw32_thread_t * sp = (ptw32_thread_t *) pthread_getspecific (ptw32_selfThreadKey);

      if (sp == ((void*)0))
        {
   if (value == ((void*)0))
     {
       return ENOENT;
     }
          self = *((pthread_t *) value);
        }
      else
        {
   self = sp->ptHandle;
        }
    }

  result = 0;

  if (key != ((void*)0))
    {
      if (self.p != ((void*)0) && key->destructor != ((void*)0) && value != ((void*)0))
 {
          ptw32_mcs_local_node_t keyLock;
          ptw32_mcs_local_node_t threadLock;
   ptw32_thread_t * sp = (ptw32_thread_t *) self.p;
   ThreadKeyAssoc *assoc;

   ptw32_mcs_lock_acquire(&(key->keyLock), &keyLock);
   ptw32_mcs_lock_acquire(&(sp->threadLock), &threadLock);

   assoc = (ThreadKeyAssoc *) sp->keys;



   while (assoc != ((void*)0))
     {
       if (assoc->key == key)
  {



    break;
  }
  assoc = assoc->nextKey;
     }




   if (assoc == ((void*)0))
     {
       result = ptw32_tkAssocCreate (sp, key);
     }

   ptw32_mcs_lock_release(&threadLock);
   ptw32_mcs_lock_release(&keyLock);
 }

      if (result == 0)
 {
   if (!TlsSetValue (key->key, (LPVOID) value))
     {
       result = EAGAIN;
     }
 }
    }

  return (result);
}
