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
typedef  scalar_t__ sys_sem_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_THREAD_SAFE_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3(void* data) // destructor for TLS semaphore
{
  sys_sem_t *sem = (sys_sem_t*)(data);

  if (sem && *sem){
    FUNC0(ESP_THREAD_SAFE_DEBUG, ("sem del, sem=%p\n", *sem));
    FUNC2(*sem);
  }

  if (sem) {
    FUNC0(ESP_THREAD_SAFE_DEBUG, ("sem pointer del, sem_p=%p\n", sem));
    FUNC1(sem);
  }
}