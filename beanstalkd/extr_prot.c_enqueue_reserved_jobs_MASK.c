#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  reserved_ct; } ;
struct TYPE_15__ {int /*<<< orphan*/  next; } ;
struct TYPE_14__ {int /*<<< orphan*/ * soonest_job; int /*<<< orphan*/  srv; TYPE_6__ reserved_jobs; } ;
struct TYPE_13__ {TYPE_2__* tube; } ;
struct TYPE_11__ {int /*<<< orphan*/  reserved_ct; } ;
struct TYPE_12__ {TYPE_1__ stat; } ;
typedef  TYPE_3__ Job ;
typedef  TYPE_4__ Conn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__ global_stat ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(Conn *c)
{
    while (!FUNC2(&c->reserved_jobs)) {
        Job *j = FUNC3(c->reserved_jobs.next);
        int r = FUNC1(c->srv, j, 0, 0);
        if (r < 1)
            FUNC0(c->srv, j, 0);
        global_stat.reserved_ct--;
        j->tube->stat.reserved_ct--;
        c->soonest_job = NULL;
    }
}