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
typedef  int /*<<< orphan*/  VCOS_MSG_WAITER_T ;
struct TYPE_4__ {scalar_t__ magic; } ;
typedef  TYPE_1__ VCOS_MSG_T ;

/* Variables and functions */
 scalar_t__ MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(VCOS_MSG_WAITER_T *waiter,
                                    VCOS_MSG_T *msg)
{
   FUNC2(waiter);
   FUNC0(msg->magic == MAGIC);
   FUNC1(msg);
}