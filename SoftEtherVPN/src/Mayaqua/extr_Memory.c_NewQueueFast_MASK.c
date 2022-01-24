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
struct TYPE_4__ {int /*<<< orphan*/  fifo; scalar_t__ num_item; int /*<<< orphan*/ * ref; int /*<<< orphan*/ * lock; } ;
typedef  TYPE_1__ QUEUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS_NEWQUEUE_COUNT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (int) ; 

QUEUE *FUNC3()
{
	QUEUE *q;

	q = FUNC2(sizeof(QUEUE));
	q->lock = NULL;
	q->ref = NULL;
	q->num_item = 0;
	q->fifo = FUNC1();

	// KS
	FUNC0(KS_NEWQUEUE_COUNT);

	return q;
}