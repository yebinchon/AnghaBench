#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pthread_cond_t ;
struct TYPE_4__ {struct TYPE_4__* next; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 TYPE_1__* pte_cond_list_head ; 
 int /*<<< orphan*/  pte_cond_list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__**) ; 

void *
FUNC3 (void *arg)
/*
 * ------------------------------------------------------
 * DOCPUBLIC
 *      Broadcasts all CVs to force re-evaluation and
 *      new timeouts if required.
 *
 * PARAMETERS
 *      NONE
 *
 *
 * DESCRIPTION
 *      Broadcasts all CVs to force re-evaluation and
 *      new timeouts if required.
 *
 *      This routine may be passed directly to pthread_create()
 *      as a new thread in order to run asynchronously.
 *
 *
 * RESULTS
 *              0               successfully broadcast all CVs
 *              EAGAIN          Not all CVs were broadcast
 *
 * ------------------------------------------------------
 */
{
   int result = 0;
   pthread_cond_t cv;

   FUNC0 (pte_cond_list_lock);

   cv = pte_cond_list_head;

   while (cv != NULL && 0 == result)
   {
      result = FUNC2 (&cv);
      cv = cv->next;
   }

   FUNC1(pte_cond_list_lock);

   return (void *) (result != 0 ? EAGAIN : 0);
}