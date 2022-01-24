#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* sys_mbox_t ;
typedef  scalar_t__ UBaseType_t ;
struct TYPE_4__ {int /*<<< orphan*/  os_mbox; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(sys_mbox_t *mbox)
{
  if ((NULL == mbox) || (NULL == *mbox)) {
    return;
  }
  UBaseType_t msgs_waiting = FUNC2((*mbox)->os_mbox);
  FUNC0("mbox quence not empty", msgs_waiting == 0);

  FUNC3((*mbox)->os_mbox);
  FUNC1(*mbox);
  *mbox = NULL;
}