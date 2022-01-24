#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ magic; int /*<<< orphan*/  code; TYPE_3__* waiter; } ;
typedef  TYPE_1__ VCOS_MSG_T ;
struct TYPE_6__ {int /*<<< orphan*/  (* on_reply ) (TYPE_3__*,TYPE_1__*) ;} ;

/* Variables and functions */
 scalar_t__ MAGIC ; 
 int /*<<< orphan*/  MSG_REPLY_BIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(VCOS_MSG_T *msg)
{
   FUNC2(msg->magic == MAGIC);
   msg->code |= MSG_REPLY_BIT;
   if (msg->waiter)
   {
      msg->waiter->on_reply(msg->waiter, msg);
   }
   else
   {
      FUNC0("%s: reply to non-reply message id %d",
                 VCOS_FUNCTION,
                 msg->code);
      FUNC2(0);
   }
}