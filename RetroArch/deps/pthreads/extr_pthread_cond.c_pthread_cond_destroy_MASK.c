#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pthread_cond_t ;
struct TYPE_7__ {scalar_t__ nWaitersBlocked; scalar_t__ nWaitersGone; struct TYPE_7__* prev; struct TYPE_7__* next; int /*<<< orphan*/  mtxUnblockLock; int /*<<< orphan*/  semBlockQueue; int /*<<< orphan*/  semBlockLock; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 TYPE_1__* PTHREAD_COND_INITIALIZER ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* pte_cond_list_head ; 
 int /*<<< orphan*/  pte_cond_list_lock ; 
 TYPE_1__* pte_cond_list_tail ; 
 int /*<<< orphan*/  pte_cond_test_init_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9 (pthread_cond_t * cond)
/*
 * ------------------------------------------------------
 * DOCPUBLIC
 *      This function destroys a condition variable
 *
 *
 * PARAMETERS
 *      cond
 *              pointer to an instance of pthread_cond_t
 *
 *
 * DESCRIPTION
 *      This function destroys a condition variable.
 *
 *      NOTES:
 *              1)      A condition variable can be destroyed
 *                      immediately after all the threads that
 *                      are blocked on it are awakened. e.g.
 *
 *                      struct list {
 *                        pthread_mutex_t lm;
 *                        ...
 *                      }
 *
 *                      struct elt {
 *                        key k;
 *                        int busy;
 *                        pthread_cond_t notbusy;
 *                        ...
 *                      }
 *
 *
 *                      struct elt *
 *                      list_find(struct list *lp, key k)
 *                      {
 *                        struct elt *ep;
 *
 *                        pthread_mutex_lock(&lp->lm);
 *                        while ((ep = find_elt(l,k) != NULL) && ep->busy)
 *                          pthread_cond_wait(&ep->notbusy, &lp->lm);
 *                        if (ep != NULL)
 *                          ep->busy = 1;
 *                        pthread_mutex_unlock(&lp->lm);
 *                        return(ep);
 *                      }
 *
 *                      delete_elt(struct list *lp, struct elt *ep)
 *                      {
 *                        pthread_mutex_lock(&lp->lm);
 *                        assert(ep->busy);
 *                        ... remove ep from list ...
 *                        ep->busy = 0;
 *                    (A) pthread_cond_broadcast(&ep->notbusy);
 *                        pthread_mutex_unlock(&lp->lm);
 *                    (B) pthread_cond_destroy(&rp->notbusy);
 *                        free(ep);
 *                      }
 *
 *                      In this example, the condition variable
 *                      and its list element may be freed (line B)
 *                      immediately after all threads waiting for
 *                      it are awakened (line A), since the mutex
 *                      and the code ensure that no other thread
 *                      can touch the element to be deleted.
 *
 * RESULTS
 *              0               successfully released condition variable,
 *              EINVAL          'cond' is invalid,
 *              EBUSY           'cond' is in use,
 *
 * ------------------------------------------------------
 */
{
   pthread_cond_t cv;
   int result = 0, result1 = 0, result2 = 0;

   /*
    * Assuming any race condition here is harmless.
    */
   if (cond == NULL || *cond == NULL)
      return EINVAL;

   if (*cond != PTHREAD_COND_INITIALIZER)
   {

      FUNC1 (pte_cond_list_lock);

      cv = *cond;

      /*
       * Close the gate; this will synchronize this thread with
       * all already signaled waiters to let them retract their
       * waiter status - SEE NOTE 1 ABOVE!!!
       */
      if (FUNC8 (&(cv->semBlockLock)) != 0)
         return errno;

      /*
       * !TRY! lock mtxUnblockLock; try will detect busy condition
       * and will not cause a deadlock with respect to concurrent
       * signal/broadcast.
       */
      if ((result = FUNC4 (&(cv->mtxUnblockLock))) != 0)
      {
         (void) FUNC7 (&(cv->semBlockLock));
         return result;
      }

      /*
       * Check whether cv is still busy (still has waiters)
       */
      if (cv->nWaitersBlocked > cv->nWaitersGone)
      {
         if (FUNC7 (&(cv->semBlockLock)) != 0)
            result = errno;
         result1 = FUNC5 (&(cv->mtxUnblockLock));
         result2 = EBUSY;
      }
      else
      {
         /*
          * Now it is safe to destroy
          */
         *cond = NULL;

         if (FUNC6 (&(cv->semBlockLock)) != 0)
            result = errno;
         if (FUNC6 (&(cv->semBlockQueue)) != 0)
            result1 = errno;
         if ((result2 = FUNC5 (&(cv->mtxUnblockLock))) == 0)
            result2 = FUNC3 (&(cv->mtxUnblockLock));

         /* Unlink the CV from the list */

         if (pte_cond_list_head == cv)
            pte_cond_list_head = cv->next;
         else
            cv->prev->next = cv->next;

         if (pte_cond_list_tail == cv)
            pte_cond_list_tail = cv->prev;
         else
            cv->next->prev = cv->prev;

         (void) FUNC0 (cv);
      }

      FUNC2(pte_cond_list_lock);

   }
   else
   {
      /*
       * See notes in pte_cond_check_need_init() above also.
       */

      FUNC1 (pte_cond_test_init_lock);

      /*
       * Check again.
       */
      if (*cond == PTHREAD_COND_INITIALIZER)
      {
         /*
          * This is all we need to do to destroy a statically
          * initialised cond that has not yet been used (initialised).
          * If we get to here, another thread waiting to initialise
          * this cond will get an EINVAL. That's OK.
          */
         *cond = NULL;
      }
      else
      {
         /*
          * The cv has been initialised while we were waiting
          * so assume it's in use.
          */
         result = EBUSY;
      }

      FUNC2(pte_cond_test_init_lock);
   }

   return ((result != 0) ? result : ((result1 != 0) ? result1 : result2));
}