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
typedef  scalar_t__ gint ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 scalar_t__ GHB_QUEUE_PENDING ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static gint
FUNC4(GhbValue *queue)
{
    gint nn, ii, count;
    GhbValue *queueDict, *uiDict;
    gint status;

    nn = 0;
    count = FUNC1(queue);
    for (ii = 0; ii < count; ii++)
    {

        queueDict = FUNC0(queue, ii);
        uiDict = FUNC2(queueDict, "uiSettings");
        status = FUNC3(uiDict, "job_status");
        if (status == GHB_QUEUE_PENDING)
        {
            nn++;
        }
    }
    return nn;
}