
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* prev; void* arg; int routine; } ;
typedef TYPE_1__ pte_cleanup_t ;
typedef int pte_cleanup_callback_t ;


 int pte_cleanupKey ;
 scalar_t__ pthread_getspecific (int ) ;
 int pthread_setspecific (int ,void*) ;

void
pte_push_cleanup (pte_cleanup_t * cleanup,
      pte_cleanup_callback_t routine, void *arg)
{
   cleanup->routine = routine;
   cleanup->arg = arg;

   cleanup->prev = (pte_cleanup_t *) pthread_getspecific (pte_cleanupKey);

   pthread_setspecific (pte_cleanupKey, (void *) cleanup);
}
