#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VCOS_MSG_WAITER_T ;
typedef  int /*<<< orphan*/  VCOS_MSG_T ;
struct TYPE_2__ {int /*<<< orphan*/  waitsem; } ;
typedef  TYPE_1__ VCOS_MSG_SIMPLE_WAITER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(VCOS_MSG_WAITER_T *waiter,
                                             VCOS_MSG_T *msg)
{
   VCOS_MSG_SIMPLE_WAITER_T *self;
   (void)msg;
   self = (VCOS_MSG_SIMPLE_WAITER_T*)waiter;
   FUNC0(&self->waitsem);
}