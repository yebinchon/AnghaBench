#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  state; scalar_t__ body_size; } ;
struct TYPE_10__ {TYPE_1__ r; scalar_t__ tube; int /*<<< orphan*/ * file; } ;
typedef  TYPE_2__ Job ;

/* Variables and functions */
 int /*<<< orphan*/  Copy ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

Job *
FUNC5(Job *j)
{
    if (!j)
        return NULL;

    Job *n = FUNC2(sizeof(Job) + j->r.body_size);
    if (!n) {
        FUNC4("OOM");
        return (Job *) 0;
    }

    FUNC3(n, j, sizeof(Job) + j->r.body_size);
    FUNC1(n);

    n->file = NULL; /* copies do not have refcnt on the wal */

    n->tube = 0; /* Don't use memcpy for the tube, which we must refcount. */
    FUNC0(n->tube, j->tube);

    /* Mark this job as a copy so it can be appropriately freed later on */
    n->r.state = Copy;

    return n;
}