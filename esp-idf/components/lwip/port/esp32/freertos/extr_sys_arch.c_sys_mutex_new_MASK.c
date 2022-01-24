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
typedef  int /*<<< orphan*/ * sys_mutex_t ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_MEM ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  ESP_THREAD_SAFE_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 

err_t
FUNC2(sys_mutex_t *pxMutex)
{
  *pxMutex = FUNC1();
  if (*pxMutex == NULL) {
    FUNC0(ESP_THREAD_SAFE_DEBUG, ("sys_mutex_new: out of mem\r\n"));
    return ERR_MEM;
  }

  FUNC0(ESP_THREAD_SAFE_DEBUG, ("sys_mutex_new: m=%p\n", *pxMutex));

  return ERR_OK;
}