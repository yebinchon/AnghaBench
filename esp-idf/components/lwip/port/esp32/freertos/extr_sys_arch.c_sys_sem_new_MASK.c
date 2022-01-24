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
typedef  int u8_t ;
typedef  int /*<<< orphan*/ * sys_sem_t ;
typedef  int /*<<< orphan*/  err_t ;
typedef  scalar_t__ BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_MEM ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  ESP_THREAD_SAFE_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ pdTRUE ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

err_t
FUNC4(sys_sem_t *sem, u8_t count)
{
  FUNC0("initial_count invalid (neither 0 nor 1)",
             (count == 0) || (count == 1));

  *sem = FUNC2();
  if (*sem == NULL) {
      FUNC1(ESP_THREAD_SAFE_DEBUG, ("sys_sem_new: out of mem\r\n"));
      return ERR_MEM;
  }

  if (count == 1) {
      BaseType_t ret = FUNC3(*sem);
      FUNC0("sys_sem_new: initial give failed", ret == pdTRUE);
  }

  return ERR_OK;
}