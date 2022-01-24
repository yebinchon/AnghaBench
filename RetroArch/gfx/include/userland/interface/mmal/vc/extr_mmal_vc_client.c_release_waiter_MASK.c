#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  sem; } ;
struct TYPE_10__ {TYPE_1__ waitpool; } ;
struct TYPE_9__ {struct TYPE_9__* inuse; } ;
typedef  TYPE_2__ MMAL_WAITER_T ;
typedef  TYPE_3__ MMAL_CLIENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(MMAL_CLIENT_T *client, MMAL_WAITER_T *waiter)
{
   FUNC0("at %p", waiter);
   FUNC1(waiter);
   FUNC1(waiter->inuse);
   waiter->inuse = 0;
   FUNC2(&client->waitpool.sem);
}