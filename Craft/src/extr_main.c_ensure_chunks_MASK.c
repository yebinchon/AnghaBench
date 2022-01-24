#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/  mtx; } ;
typedef  TYPE_1__ Worker ;
struct TYPE_5__ {TYPE_1__* workers; } ;
typedef  int /*<<< orphan*/  Player ;

/* Variables and functions */
 int WORKERS ; 
 scalar_t__ WORKER_IDLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* g ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(Player *player) {
    FUNC0();
    FUNC2(player);
    for (int i = 0; i < WORKERS; i++) {
        Worker *worker = g->workers + i;
        FUNC3(&worker->mtx);
        if (worker->state == WORKER_IDLE) {
            FUNC1(player, worker);
        }
        FUNC4(&worker->mtx);
    }
}