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
typedef  int u32_t ;
typedef  int /*<<< orphan*/  sys_sem_t ;
typedef  int TickType_t ;
typedef  scalar_t__ BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int SYS_ARCH_TIMEOUT ; 
 scalar_t__ errQUEUE_EMPTY ; 
 scalar_t__ pdTRUE ; 
 int portMAX_DELAY ; 
 int portTICK_RATE_MS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 

u32_t
FUNC2(sys_sem_t *sem, u32_t timeout)
{
  BaseType_t ret;

  if (!timeout) {
    /* wait infinite */
    ret = FUNC1(*sem, portMAX_DELAY);
    FUNC0("taking semaphore failed", ret == pdTRUE);
  } else {
    TickType_t timeout_ticks = timeout / portTICK_RATE_MS;
    ret = FUNC1(*sem, timeout_ticks);
    if (ret == errQUEUE_EMPTY) {
      /* timed out */
      return SYS_ARCH_TIMEOUT;
    }
    FUNC0("taking semaphore failed", ret == pdTRUE);
  }

  return 0;
}