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
typedef  int /*<<< orphan*/  sys_sem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sys_thread_sem_key ; 
 int /*<<< orphan*/  FUNC4 () ; 

sys_sem_t*
FUNC5(void)
{
  sys_sem_t *sem = (sys_sem_t*)FUNC2(sizeof(sys_sem_t*));

  if (!sem){
    FUNC0(TAG, "thread_sem_init: out of memory");
    return 0;
  }

  *sem = FUNC4();
  if (!(*sem)){
    FUNC1(sem);
    FUNC0(TAG, "thread_sem_init: out of memory");
    return 0;
  }

  FUNC3(sys_thread_sem_key, sem);
  return sem;
}