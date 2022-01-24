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
struct bstp_task {scalar_t__ bt_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  PZERO ; 
 int /*<<< orphan*/  bstp_task_mtx ; 
 int /*<<< orphan*/  bstp_task_queue ; 
 struct bstp_task* bstp_task_queue_running ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bstp_task**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct bstp_task *bt)
{
	FUNC0(bstp_task_mtx);

	while (bt->bt_count != 0 || bstp_task_queue_running == bt) {
		FUNC3(&bstp_task_queue);
		FUNC2(&bstp_task_queue_running, bstp_task_mtx, PZERO, "bstp_task_queue", NULL);
	}
	FUNC1(bstp_task_mtx);
}