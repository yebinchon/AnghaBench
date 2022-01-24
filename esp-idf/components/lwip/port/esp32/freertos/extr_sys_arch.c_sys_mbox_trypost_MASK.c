#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* sys_mbox_t ;
typedef  int /*<<< orphan*/  err_t ;
struct TYPE_3__ {int /*<<< orphan*/  os_mbox; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_MEM ; 
 int /*<<< orphan*/  ERR_OK ; 
 int /*<<< orphan*/  ESP_THREAD_SAFE_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ pdTRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 

err_t
FUNC2(sys_mbox_t *mbox, void *msg)
{
  err_t xReturn;

  if (FUNC1((*mbox)->os_mbox, &msg, 0) == pdTRUE) {
    xReturn = ERR_OK;
  } else {
    FUNC0(ESP_THREAD_SAFE_DEBUG, ("trypost mbox=%p fail\n", (*mbox)->os_mbox));
    xReturn = ERR_MEM;
  }

  return xReturn;
}