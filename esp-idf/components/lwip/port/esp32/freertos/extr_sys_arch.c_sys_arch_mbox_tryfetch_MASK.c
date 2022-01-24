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
typedef  int /*<<< orphan*/  u32_t ;
typedef  TYPE_1__* sys_mbox_t ;
struct TYPE_3__ {int /*<<< orphan*/  os_mbox; } ;
typedef  scalar_t__ BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  SYS_MBOX_EMPTY ; 
 scalar_t__ errQUEUE_EMPTY ; 
 scalar_t__ pdTRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 

u32_t
FUNC2(sys_mbox_t *mbox, void **msg)
{
  BaseType_t ret;
  void *msg_dummy;

  if (msg == NULL) {
    msg = &msg_dummy;
  }
  ret = FUNC1((*mbox)->os_mbox, &(*msg), 0);
  if (ret == errQUEUE_EMPTY) {
    *msg = NULL;
    return SYS_MBOX_EMPTY;
  }
  FUNC0("mbox fetch failed", ret == pdTRUE);

  return 0;
}