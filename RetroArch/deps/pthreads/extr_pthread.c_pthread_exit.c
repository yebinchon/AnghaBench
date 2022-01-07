
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* exitStatus; } ;
typedef TYPE_1__ pte_thread_t ;


 int PTE_EPS_EXIT ;
 int pte_osThreadExit () ;
 int pte_selfThreadKey ;
 int pte_throw (int ) ;
 scalar_t__ pthread_getspecific (int ) ;

void pthread_exit (void *value_ptr)
{
   pte_thread_t * sp;





   sp = (pte_thread_t *) pthread_getspecific (pte_selfThreadKey);

   if (((void*)0) == sp)
   {
      pte_osThreadExit();


   }

   sp->exitStatus = value_ptr;

   pte_throw (PTE_EPS_EXIT);


}
