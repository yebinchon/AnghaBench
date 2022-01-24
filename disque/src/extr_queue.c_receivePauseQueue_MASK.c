#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  queue ;

/* Variables and functions */
 int QUEUE_FLAG_PAUSED_IN ; 
 int QUEUE_FLAG_PAUSED_OUT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 

void FUNC3(robj *qname, uint32_t flags) {
    queue *q = FUNC1(qname);

    /* If the queue does not exist, and flags are cleared, there is nothing
     * to do. Otherwise we have to create the queue. */
    if (!q) {
        if (flags == 0) return;
        q = FUNC0(qname);
    }

    /* Replicate the sender pause flag in our queue. */
    FUNC2(q,QUEUE_FLAG_PAUSED_IN,
        (flags & QUEUE_FLAG_PAUSED_IN) != 0);
    FUNC2(q,QUEUE_FLAG_PAUSED_OUT,
        (flags & QUEUE_FLAG_PAUSED_OUT) != 0);
}