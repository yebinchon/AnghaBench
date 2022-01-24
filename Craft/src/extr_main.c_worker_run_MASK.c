#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ load; } ;
typedef  TYPE_1__ WorkerItem ;
struct TYPE_6__ {scalar_t__ state; int /*<<< orphan*/  mtx; TYPE_1__ item; int /*<<< orphan*/  cnd; } ;
typedef  TYPE_2__ Worker ;

/* Variables and functions */
 scalar_t__ WORKER_BUSY ; 
 scalar_t__ WORKER_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(void *arg) {
    Worker *worker = (Worker *)arg;
    int running = 1;
    while (running) {
        FUNC3(&worker->mtx);
        while (worker->state != WORKER_BUSY) {
            FUNC0(&worker->cnd, &worker->mtx);
        }
        FUNC4(&worker->mtx);
        WorkerItem *item = &worker->item;
        if (item->load) {
            FUNC2(item);
        }
        FUNC1(item);
        FUNC3(&worker->mtx);
        worker->state = WORKER_DONE;
        FUNC4(&worker->mtx);
    }
    return 0;
}