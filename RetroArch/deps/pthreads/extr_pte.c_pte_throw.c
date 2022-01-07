
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int start_mark; int exitStatus; scalar_t__ implicit; } ;
typedef TYPE_1__ pte_thread_t ;




 int PTHREAD_CANCELED ;
 int exit (int) ;
 int longjmp (int ,unsigned int) ;
 int pte_osThreadExit (void*) ;
 int pte_pop_cleanup_all (int) ;
 int pte_selfThreadKey ;
 int pte_thread_detach_and_exit_np () ;
 scalar_t__ pthread_getspecific (int ) ;

void pte_throw (unsigned int exception)
{




   pte_thread_t * sp = (pte_thread_t *) pthread_getspecific (pte_selfThreadKey);



   if (exception != 129 && exception != 128)
      exit (1);

   if (((void*)0) == sp || sp->implicit)
   {






      unsigned exitCode = 0;

      switch (exception)
      {
         case 129:
            exitCode = (unsigned) PTHREAD_CANCELED;
            break;
         case 128:
            exitCode = (unsigned) sp->exitStatus;;
            break;
      }

      pte_thread_detach_and_exit_np ();




   }

   pte_pop_cleanup_all (1);
   longjmp (sp->start_mark, exception);


}
