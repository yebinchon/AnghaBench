#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ pending_timeout; int /*<<< orphan*/  srv; TYPE_2__* out_job; } ;
struct TYPE_17__ {scalar_t__ deadline_at; int /*<<< orphan*/  timeout_ct; } ;
struct TYPE_18__ {TYPE_1__ r; } ;
typedef  TYPE_2__ Job ;
typedef  TYPE_3__ Conn ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEADLINE_SOON ; 
 int /*<<< orphan*/  MSG_TIMED_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_2__* FUNC4 (TYPE_3__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timeout_ct ; 

__attribute__((used)) static void
FUNC11(Conn *c)
{
    int should_timeout = 0;
    Job *j;

    /* Check if the client was trying to reserve a job. */
    if (FUNC1(c) && FUNC2(c))
        should_timeout = 1;

    /* Check if any reserved jobs have run out of time. We should do this
     * whether or not the client is waiting for a new reservation. */
    while ((j = FUNC4(c))) {
        if (j->r.deadline_at >= FUNC7())
            break;

        /* This job is in the middle of being written out. If we return it to
         * the ready queue, someone might free it before we finish writing it
         * out to the socket. So we'll copy it here and free the copy when it's
         * done sending. */
        if (j == c->out_job) {
            c->out_job = FUNC6(c->out_job);
        }

        timeout_ct++; /* stats */
        j->r.timeout_ct++;
        int r = FUNC5(c->srv, FUNC8(c, j), 0, 0);
        if (r < 1)
            FUNC0(c->srv, j, 0); /* out of memory, so bury it */
        FUNC3(c);
    }

    if (should_timeout) {
        FUNC9(c);
        FUNC10(c, MSG_DEADLINE_SOON);
    } else if (FUNC1(c) && c->pending_timeout >= 0) {
        c->pending_timeout = -1;
        FUNC9(c);
        FUNC10(c, MSG_TIMED_OUT);
    }
}