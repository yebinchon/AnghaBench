#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  VCOS_STATUS_T ;
struct TYPE_7__ {scalar_t__ magic; int /*<<< orphan*/ * waiter; } ;
typedef  TYPE_1__ VCOS_MSG_T ;
struct TYPE_8__ {int /*<<< orphan*/  waitsem; int /*<<< orphan*/  waiter; } ;
typedef  TYPE_2__ VCOS_MSG_SIMPLE_WAITER_T ;
typedef  int /*<<< orphan*/  VCOS_MSGQUEUE_T ;

/* Variables and functions */
 scalar_t__ MAGIC ; 
 int /*<<< orphan*/  VCOS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

VCOS_STATUS_T FUNC5(VCOS_MSGQUEUE_T *dest, uint32_t code, VCOS_MSG_T *msg)
{
   VCOS_STATUS_T st;
   VCOS_MSG_SIMPLE_WAITER_T waiter;

   FUNC0(msg->magic == MAGIC);

   /* if this fires, you've set a waiter up but are now about to obliterate it
    * with the 'wait for a reply' waiter.
    */
   FUNC0(msg->waiter == NULL);

   if ((st=FUNC3(&waiter)) != VCOS_SUCCESS)
      return st;

   FUNC1(&waiter.waiter, dest, code, msg);
   FUNC4(&waiter.waitsem);
   FUNC2(&waiter);

   return VCOS_SUCCESS;
}