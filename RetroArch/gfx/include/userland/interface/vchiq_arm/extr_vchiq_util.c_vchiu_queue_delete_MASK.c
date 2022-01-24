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
struct TYPE_3__ {int /*<<< orphan*/ * storage; int /*<<< orphan*/  push; int /*<<< orphan*/  pop; } ;
typedef  TYPE_1__ VCHIU_QUEUE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(VCHIU_QUEUE_T *queue)
{
   FUNC0(&queue->pop);
   FUNC0(&queue->push);
   if (queue->storage != NULL)
      FUNC1(queue->storage);
}