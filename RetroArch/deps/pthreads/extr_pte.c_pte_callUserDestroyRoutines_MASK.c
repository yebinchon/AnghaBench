#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pthread_t ;
typedef  TYPE_1__* pthread_key_t ;
struct TYPE_6__ {int /*<<< orphan*/  threadLock; scalar_t__ nextAssoc; scalar_t__ keys; } ;
typedef  TYPE_2__ pte_thread_t ;
struct TYPE_7__ {TYPE_1__* key; scalar_t__ nextKey; } ;
typedef  TYPE_3__ ThreadKeyAssoc ;
struct TYPE_5__ {void (* destructor ) (void*) ;int /*<<< orphan*/  keyLock; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 int PTHREAD_DESTRUCTOR_ITERATIONS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7 (pthread_t thread)
/*
 * -------------------------------------------------------------------
 * DOCPRIVATE
 *
 * This the routine runs through all thread keys and calls
 * the destroy routines on the user's data for the current thread.
 * It simulates the behaviour of POSIX Threads.
 *
 * PARAMETERS
 *              thread
 *                      an instance of pthread_t
 *
 * RETURNS
 *              N/A
 * -------------------------------------------------------------------
 */
{
   int assocsRemaining;
   int iterations = 0;
   ThreadKeyAssoc *assoc = NULL;
   pte_thread_t   *sp    = (pte_thread_t *) thread;

   if (!thread)
      return;

   /*
    * Run through all Thread<-->Key associations
    * for the current thread.
    *
    * Do this process at most PTHREAD_DESTRUCTOR_ITERATIONS times.
    */
   do
   {
      assocsRemaining = 0;
      iterations++;

      (void) FUNC4(&(sp->threadLock));
      /*
       * The pointer to the next assoc is stored in the thread struct so that
       * the assoc destructor in pthread_key_delete can adjust it
       * if it deletes this assoc. This can happen if we fail to acquire
       * both locks below, and are forced to release all of our locks,
       * leaving open the opportunity for pthread_key_delete to get in
       * before us.
       */
      sp->nextAssoc = sp->keys;
      (void) FUNC6(&(sp->threadLock));

      for (;;)
      {
         void * value;
         pthread_key_t k;
         void (*destructor) (void *);

         /*
          * First we need to serialise with pthread_key_delete by locking
          * both assoc guards, but in the reverse order to our convention,
          * so we must be careful to avoid deadlock.
          */
         (void) FUNC4(&(sp->threadLock));

         if ((assoc = (ThreadKeyAssoc *)sp->nextAssoc) == NULL)
         {
            /* Finished */
            FUNC6(&(sp->threadLock));
            break;
         }
         else
         {
            /*
             * assoc->key must be valid because assoc can't change or be
             * removed from our chain while we hold at least one lock. If
             * the assoc was on our key chain then the key has not been
             * deleted yet.
             *
             * Now try to acquire the second lock without deadlocking.
             * If we fail, we need to relinquish the first lock and the
             * processor and then try to acquire them all again.
             */
            if (FUNC5(&(assoc->key->keyLock)) == EBUSY)
            {
               FUNC6(&(sp->threadLock));
               FUNC0(1); // Ugly but necessary to avoid priority effects.
               /*
                * Go around again.
                * If pthread_key_delete has removed this assoc in the meantime,
                * sp->nextAssoc will point to a new assoc.
                */
               continue;
            }
         }

         /* We now hold both locks */

         sp->nextAssoc = assoc->nextKey;

         /*
          * Key still active; pthread_key_delete
          * will block on these same mutexes before
          * it can release actual key; therefore,
          * key is valid and we can call the destroy
          * routine;
          */
         k = assoc->key;
         destructor = k->destructor;
         value = FUNC1(k->key);
         FUNC2 (k->key, NULL);

         // Every assoc->key exists and has a destructor
         if (value && iterations <= PTHREAD_DESTRUCTOR_ITERATIONS)
         {
            /*
             * Unlock both locks before the destructor runs.
             * POSIX says pthread_key_delete can be run from destructors,
             * and that probably includes with this key as target.
             * pthread_setspecific can also be run from destructors and
             * also needs to be able to access the assocs.
             */
            (void) FUNC6(&(sp->threadLock));
            (void) FUNC6(&(k->keyLock));

            assocsRemaining++;


            /*
             * Run the caller's cleanup routine.
             */
            destructor (value);
         }
         else
         {
            /*
             * Remove association from both the key and thread chains
             * and reclaim it's memory resources.
             */
            FUNC3 (assoc);
            (void) FUNC6(&(sp->threadLock));
            (void) FUNC6(&(k->keyLock));
         }
      }
   }while (assocsRemaining);
}