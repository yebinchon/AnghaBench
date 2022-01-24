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

/* Variables and functions */
 int /*<<< orphan*/  ESP_THREAD_SAFE_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(sys_mutex_t *pxMutex)
{
  FUNC0(ESP_THREAD_SAFE_DEBUG, ("sys_mutex_free: m=%p\n", *pxMutex));
  FUNC1(*pxMutex);
  *pxMutex = NULL;
}