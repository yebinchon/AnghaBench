#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  start_mark; int /*<<< orphan*/  exitStatus; scalar_t__ implicit; } ;
typedef  TYPE_1__ pte_thread_t ;

/* Variables and functions */
#define  PTE_EPS_CANCEL 129 
#define  PTE_EPS_EXIT 128 
 int /*<<< orphan*/  PTHREAD_CANCELED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  pte_selfThreadKey ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6 (unsigned int exception)
{
   /*
    * Don't use pthread_self() to avoid creating an implicit POSIX thread handle
    * unnecessarily.
    */
   pte_thread_t * sp = (pte_thread_t *) FUNC5 (pte_selfThreadKey);


   /* Should never enter here */
   if (exception != PTE_EPS_CANCEL && exception != PTE_EPS_EXIT)
      FUNC0 (1);

   if (NULL == sp || sp->implicit)
   {
      /*
       * We're inside a non-POSIX initialised OS thread
       * so there is no point to jump or throw back to. Just do an
       * explicit thread exit here after cleaning up POSIX
       * residue (i.e. cleanup handlers, POSIX thread handle etc).
       */
      unsigned exitCode = 0;

      switch (exception)
      {
         case PTE_EPS_CANCEL:
            exitCode = (unsigned) PTHREAD_CANCELED;
            break;
         case PTE_EPS_EXIT:
            exitCode = (unsigned) sp->exitStatus;;
            break;
      }

      FUNC4 ();

#if 0
      pte_osThreadExit((void*)exitCode);
#endif
   }

   FUNC3 (1);
   FUNC1 (sp->start_mark, exception);

   /* Never reached */
}