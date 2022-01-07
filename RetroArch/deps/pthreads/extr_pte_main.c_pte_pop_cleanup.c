
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ prev; int arg; int (* routine ) (int ) ;} ;
typedef TYPE_1__ pte_cleanup_t ;


 int pte_cleanupKey ;
 scalar_t__ pthread_getspecific (int ) ;
 int pthread_setspecific (int ,void*) ;
 int stub1 (int ) ;

pte_cleanup_t *pte_pop_cleanup (int execute)
{
   pte_cleanup_t *cleanup;

   cleanup = (pte_cleanup_t *) pthread_getspecific (pte_cleanupKey);

   if (cleanup != ((void*)0))
   {
      if (execute && (cleanup->routine != ((void*)0)))
      {

         (*cleanup->routine) (cleanup->arg);

      }

      pthread_setspecific (pte_cleanupKey, (void *) cleanup->prev);

   }

   return (cleanup);

}
