#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ prev; int /*<<< orphan*/  arg; int /*<<< orphan*/  (* routine ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ pte_cleanup_t ;

/* Variables and functions */
 int /*<<< orphan*/  pte_cleanupKey ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

pte_cleanup_t *FUNC3 (int execute)
   /*
    * ------------------------------------------------------
    * DOCPUBLIC
    *      This function pops the most recently pushed cleanup
    *      handler. If execute is nonzero, then the cleanup handler
    *      is executed if non-null.
    *
    * PARAMETERS
    *      execute
    *              if nonzero, execute the cleanup handler
    *
    *
    * DESCRIPTION
    *      This function pops the most recently pushed cleanup
    *      handler. If execute is nonzero, then the cleanup handler
    *      is executed if non-null.
    *      NOTE: specify 'execute' as nonzero to avoid duplication
    *                of common cleanup code.
    *
    * RESULTS
    *              N/A
    *
    * ------------------------------------------------------
    */
{
   pte_cleanup_t *cleanup;

   cleanup = (pte_cleanup_t *) FUNC0 (pte_cleanupKey);

   if (cleanup != NULL)
   {
      if (execute && (cleanup->routine != NULL))
      {

         (*cleanup->routine) (cleanup->arg);

      }

      FUNC1 (pte_cleanupKey, (void *) cleanup->prev);

   }

   return (cleanup);

}