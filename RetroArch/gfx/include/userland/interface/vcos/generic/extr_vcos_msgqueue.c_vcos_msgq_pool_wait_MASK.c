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
struct TYPE_7__ {TYPE_2__* pool; int /*<<< orphan*/ * waiter; int /*<<< orphan*/  magic; } ;
typedef  TYPE_1__ VCOS_MSG_T ;
struct TYPE_8__ {int /*<<< orphan*/  waiter; int /*<<< orphan*/  blockpool; int /*<<< orphan*/  sem; } ;
typedef  TYPE_2__ VCOS_MSGQ_POOL_T ;

/* Variables and functions */
 int /*<<< orphan*/  MAGIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

VCOS_MSG_T *FUNC3(VCOS_MSGQ_POOL_T *pool)
{
   VCOS_MSG_T *msg;
   FUNC2(&pool->sem);
   msg = FUNC1(&pool->blockpool);
   FUNC0(msg);
   msg->magic = MAGIC;
   msg->waiter = &pool->waiter;
   msg->pool = pool;
   return msg;
}