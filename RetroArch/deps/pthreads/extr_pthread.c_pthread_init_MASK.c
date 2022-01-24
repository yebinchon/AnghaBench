#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int PTE_TRUE ; 
 int /*<<< orphan*/  pte_cleanupKey ; 
 int /*<<< orphan*/  pte_cond_list_lock ; 
 int /*<<< orphan*/  pte_cond_test_init_lock ; 
 int /*<<< orphan*/  pte_mutex_test_init_lock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int pte_processInitialized ; 
 int /*<<< orphan*/  pte_rwlock_test_init_lock ; 
 int /*<<< orphan*/  pte_selfThreadKey ; 
 int /*<<< orphan*/  pte_spinlock_test_init_lock ; 
 int /*<<< orphan*/  pte_thread_reuse_lock ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(void)
{
   /*
    * Ignore if already initialized. this is useful for
    * programs that uses a non-dll pthread
    * library. Such programs must call pte_processInitialize() explicitly,
    * since this initialization routine is automatically called only when
    * the dll is loaded.
    */
   if (pte_processInitialized)
      return PTE_TRUE;

   pte_processInitialized = PTE_TRUE;

   // Must happen before creating keys.
   FUNC0();

   /*
    * Initialize Keys
    */
   if ((FUNC2 (&pte_selfThreadKey, NULL) != 0) ||
         (FUNC2 (&pte_cleanupKey, NULL) != 0))
      FUNC3();

   /*
    * Set up the global locks.
    */
   FUNC1 (&pte_thread_reuse_lock);
   FUNC1 (&pte_mutex_test_init_lock);
   FUNC1 (&pte_cond_list_lock);
   FUNC1 (&pte_cond_test_init_lock);
   FUNC1 (&pte_rwlock_test_init_lock);
   FUNC1 (&pte_spinlock_test_init_lock);

   return (pte_processInitialized);
}