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
typedef  int /*<<< orphan*/  pthread_mutex_t ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long (*) ()) ; 
 int /*<<< orphan*/  FUNC2 (void (*) ()) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ lock_callback ; 
 int /*<<< orphan*/ * lockarray ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ thread_id ; 

__attribute__((used)) static void FUNC5(void)
{
  int i;

  lockarray = (pthread_mutex_t *)FUNC3(FUNC0() *
                                                sizeof(pthread_mutex_t));
  for(i = 0; i<FUNC0(); i++) {
    FUNC4(&(lockarray[i]), NULL);
  }

  FUNC1((unsigned long (*)())thread_id);
  FUNC2((void (*)())lock_callback);
}