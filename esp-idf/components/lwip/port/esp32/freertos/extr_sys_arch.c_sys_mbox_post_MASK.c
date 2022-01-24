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
struct TYPE_3__ {int /*<<< orphan*/  os_mbox; } ;
typedef  scalar_t__ BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ pdTRUE ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 

void
FUNC2(sys_mbox_t *mbox, void *msg)
{
  BaseType_t ret = FUNC1((*mbox)->os_mbox, &msg, portMAX_DELAY);
  FUNC0("mbox post failed", ret == pdTRUE);
}