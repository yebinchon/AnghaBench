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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 

gint
FUNC4(GhbValue *queue, gint unique_id, GhbValue **job)
{
    GhbValue *queueDict, *uiDict;
    gint ii, count;
    gint job_unique_id;

    if (job != NULL)
    {
        *job = NULL;
    }
    if (unique_id == 0)  // Invalid Id
        return -1;

    count = FUNC1(queue);
    for (ii = 0; ii < count; ii++)
    {
        queueDict = FUNC0(queue, ii);
        uiDict = FUNC2(queueDict, "uiSettings");
        job_unique_id = FUNC3(uiDict, "job_unique_id");
        if (job_unique_id == unique_id)
        {
            if (job != NULL)
            {
                *job = queueDict;
            }
            return ii;
        }
    }
    return -1;
}