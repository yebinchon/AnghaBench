#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pthread_t ;
typedef  TYPE_2__* pthread_key_t ;
struct TYPE_11__ {int /*<<< orphan*/  threadLock; scalar_t__ keys; } ;
typedef  TYPE_1__ pte_thread_t ;
struct TYPE_13__ {struct TYPE_13__* nextKey; TYPE_2__* key; } ;
typedef  TYPE_4__ ThreadKeyAssoc ;
struct TYPE_12__ {int /*<<< orphan*/  key; int /*<<< orphan*/  keyLock; int /*<<< orphan*/ * destructor; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOENT ; 
 scalar_t__ PTE_OS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*) ; 
 TYPE_2__* pte_selfThreadKey ; 
 int FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 () ; 

int FUNC6 (pthread_key_t key, const void *value)
   /*
    * ------------------------------------------------------
    * DOCPUBLIC
    *      This function sets the value of the thread specific
    *      key in the calling thread.
    *
    * PARAMETERS
    *      key
    *              an instance of pthread_key_t
    *      value
    *              the value to set key to
    *
    *
    * DESCRIPTION
    *      This function sets the value of the thread specific
    *      key in the calling thread.
    *
    * RESULTS
    *              0               successfully set value
    *              EAGAIN          could not set value
    *              ENOENT          SERIOUS!!
    *
    * ------------------------------------------------------
    */
{
   pthread_t self;
   int result = 0;

   if (key != pte_selfThreadKey)
   {
      /*
       * Using pthread_self will implicitly create
       * an instance of pthread_t for the current
       * thread if one wasn't explicitly created
       */
      self = FUNC5 ();
      if (self == NULL)
         return ENOENT;
   }
   else
   {
      /*
       * Resolve catch-22 of registering thread with selfThread
       * key
       */
      pte_thread_t * sp = (pte_thread_t *) FUNC2 (pte_selfThreadKey);

      if (sp == NULL)
      {
         if (value == NULL)
            return ENOENT;

         self = *((pthread_t *) value);
      }
      else
         self = sp;
   }

   result = 0;

   if (key != NULL)
   {
      if (self != NULL && key->destructor != NULL && value != NULL)
      {
         /*
          * Only require associations if we have to
          * call user destroy routine.
          * Don't need to locate an existing association
          * when setting data to NULL since the
          * data is stored with the operating system; not
          * on the association; setting assoc to NULL short
          * circuits the search.
          */
         ThreadKeyAssoc *assoc;

         if (FUNC3(&(key->keyLock)) == 0)
         {
            pte_thread_t * sp = (pte_thread_t *) self;

            (void) FUNC3(&(sp->threadLock));

            assoc = (ThreadKeyAssoc *) sp->keys;
            /*
             * Locate existing association
             */
            while (assoc != NULL)
            {
               /*
                * Association already exists
                */
               if (assoc->key == key)
                  break;
               assoc = assoc->nextKey;
            }

            /*
             * create an association if not found
             */
            if (assoc == NULL)
               result = FUNC1 (sp, key);

            (void) FUNC4(&(sp->threadLock));
         }
         (void) FUNC4(&(key->keyLock));
      }

      if (result == 0)
      {
         if (FUNC0 (key->key, (void *) value) != PTE_OS_OK)
            result = EAGAIN;
      }
   }

   return (result);
}