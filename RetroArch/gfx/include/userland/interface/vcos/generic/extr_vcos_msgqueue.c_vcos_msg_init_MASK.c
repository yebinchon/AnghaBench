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
struct TYPE_3__ {int /*<<< orphan*/ * pool; int /*<<< orphan*/ * waiter; int /*<<< orphan*/ * next; int /*<<< orphan*/  magic; } ;
typedef  TYPE_1__ VCOS_MSG_T ;

/* Variables and functions */
 int /*<<< orphan*/  MAGIC ; 

void FUNC0(VCOS_MSG_T *msg)
{
   msg->magic = MAGIC;
   msg->next = NULL;
   msg->waiter = NULL;
   msg->pool = NULL;
}