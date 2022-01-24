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
struct jscanFilter {int /*<<< orphan*/ * state; scalar_t__ numstates; scalar_t__ queue; } ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_4__ {size_t state; int /*<<< orphan*/  queue; int /*<<< orphan*/  nodes_delivered; } ;
typedef  TYPE_1__ job ;
typedef  int /*<<< orphan*/  dictEntry ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC4(void *privdata, const dictEntry *de) {
    void **pd = (void**)privdata;
    list *list = pd[0];
    struct jscanFilter *filter = pd[1];
    job *job = FUNC0(de);

    /* Skip dummy jobs created by ACK command when job ID is unknown. */
    if (FUNC1(job->nodes_delivered) == 0) return;

    /* Don't add the item if it does not satisfies our filter. */
    if (filter->queue && !FUNC2(job->queue,filter->queue)) return;
    if (filter->numstates && !filter->state[job->state]) return;

    /* Otherwise put the queue into the list that will be returned to the
     * client later. */
    FUNC3(list,job);
}