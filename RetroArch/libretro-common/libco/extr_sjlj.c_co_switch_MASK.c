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
typedef  scalar_t__ cothread_t ;
struct TYPE_3__ {int /*<<< orphan*/  context; } ;
typedef  TYPE_1__ cothread_struct ;

/* Variables and functions */
 TYPE_1__* co_running ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(cothread_t cothread)
{
   if (!FUNC1(co_running->context, 0))
   {
      co_running = (cothread_struct*)cothread;
      FUNC0(co_running->context, 1);
   }
}