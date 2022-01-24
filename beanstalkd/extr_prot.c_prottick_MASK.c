#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ int64 ;
struct TYPE_19__ {scalar_t__ unpause_at; scalar_t__ pause; } ;
typedef  TYPE_3__ Tube ;
struct TYPE_23__ {size_t len; TYPE_3__** items; } ;
struct TYPE_22__ {scalar_t__ tickat; scalar_t__ in_conns; } ;
struct TYPE_17__ {scalar_t__ deadline_at; } ;
struct TYPE_21__ {int /*<<< orphan*/  heap_index; TYPE_2__* tube; TYPE_1__ r; } ;
struct TYPE_16__ {TYPE_6__** data; scalar_t__ len; } ;
struct TYPE_20__ {TYPE_10__ conns; } ;
struct TYPE_18__ {TYPE_10__ delay; } ;
typedef  TYPE_4__ Server ;
typedef  TYPE_5__ Job ;
typedef  TYPE_6__ Conn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int FUNC2 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_5__* FUNC8 () ; 
 TYPE_7__ tubes ; 

int64
FUNC9(Server *s)
{
    Job *j;
    int64 now;
    Tube *t;
    int64 period = 0x34630B8A000LL; /* 1 hour in nanoseconds */
    int64 d;

    now = FUNC6();

    // Enqueue all jobs that are no longer delayed.
    // Capture the smallest period from the soonest delayed job.
    while ((j = FUNC8())) {
        d = j->r.deadline_at - now;
        if (d > 0) {
            period = FUNC5(period, d);
            break;
        }
        FUNC4(&j->tube->delay, j->heap_index);
        int r = FUNC2(s, j, 0, 0);
        if (r < 1)
            FUNC0(s, j, 0);  /* out of memory */
    }

    // Unpause every possible tube and process the queue.
    // Capture the smallest period from the soonest pause deadline.
    size_t i;
    for (i = 0; i < tubes.len; i++) {
        t = tubes.items[i];
        d = t->unpause_at - now;
        if (t->pause && d <= 0) {
            t->pause = 0;
            FUNC7();
        }
        else if (d > 0) {
            period = FUNC5(period, d);
        }
    }

    // Process connections with pending timeouts. Release jobs with expired ttr.
    // Capture the smallest period from the soonest connection.
    while (s->conns.len) {
        Conn *c = s->conns.data[0];
        d = c->tickat - now;
        if (d > 0) {
            period = FUNC5(period, d);
            break;
        }
        FUNC4(&s->conns, 0);
        c->in_conns = 0;
        FUNC1(c);
    }

    FUNC3();

    return period;
}