
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* pthread_key_t ;
typedef scalar_t__ pte_osResult ;
struct TYPE_4__ {void (* destructor ) (void*) ;int keyLock; int key; } ;


 int EAGAIN ;
 int ENOMEM ;
 scalar_t__ PTE_OS_OK ;
 int PTHREAD_MUTEX_INITIALIZER ;
 scalar_t__ calloc (int,int) ;
 int free (TYPE_1__*) ;
 scalar_t__ pte_osTlsAlloc (int *) ;

int
pthread_key_create (pthread_key_t * key, void (*destructor) (void *))
{
   int result = 0;
   pthread_key_t newkey;

   if ((newkey = (pthread_key_t) calloc (1, sizeof (*newkey))) == ((void*)0))
      result = ENOMEM;
   else
   {
      pte_osResult osResult = pte_osTlsAlloc(&(newkey->key));

      if (osResult != PTE_OS_OK)
      {
         result = EAGAIN;

         free (newkey);
         newkey = ((void*)0);
      }
      else if (destructor != ((void*)0))
      {







         newkey->keyLock = PTHREAD_MUTEX_INITIALIZER;
         newkey->destructor = destructor;
      }

   }

   *key = newkey;

   return (result);
}
