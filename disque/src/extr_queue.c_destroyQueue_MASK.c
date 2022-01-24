#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_5__ {scalar_t__ clients; scalar_t__ needjobs_responders; int /*<<< orphan*/  sl; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ queue ;
struct TYPE_6__ {int /*<<< orphan*/  queues; } ;

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

int FUNC9(robj *name) {
    queue *q = FUNC5(name);
    if (!q) return C_ERR;

    FUNC1(server.queues,name);
    FUNC0(q->name);
    FUNC7(q->sl);
    if (q->needjobs_responders) FUNC2(q->needjobs_responders);
    if (q->clients) {
        FUNC6(FUNC3(q->clients) == 0);
        FUNC4(q->clients);
    }
    FUNC8(q);
    return C_OK;
}