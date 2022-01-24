#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_13__ {int /*<<< orphan*/  reserved_ct; int /*<<< orphan*/  urgent_ct; } ;
struct TYPE_9__ {scalar_t__ pri; } ;
struct TYPE_12__ {TYPE_3__* tube; TYPE_1__ r; int /*<<< orphan*/  heap_index; } ;
struct TYPE_10__ {int /*<<< orphan*/  urgent_ct; } ;
struct TYPE_11__ {int /*<<< orphan*/  waiting_conns; TYPE_2__ stat; int /*<<< orphan*/  ready; } ;
typedef  TYPE_4__ Job ;
typedef  int /*<<< orphan*/  Conn ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_RESERVED ; 
 scalar_t__ URGENT_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_7__ global_stat ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ready_ct ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8()
{
    Job *j = NULL;
    int64 now = FUNC3();

    while ((j = FUNC4(now))) {
        FUNC1(&j->tube->ready, j->heap_index);
        ready_ct--;
        if (j->r.pri < URGENT_THRESHOLD) {
            global_stat.urgent_ct--;
            j->tube->stat.urgent_ct--;
        }

        Conn *c = FUNC2(&j->tube->waiting_conns);
        if (c == NULL) {
            FUNC7("waiting_conns is empty");
            continue;
        }
        global_stat.reserved_ct++;

        FUNC5(c);
        FUNC0(c, j);
        FUNC6(c, j, MSG_RESERVED);
    }
}