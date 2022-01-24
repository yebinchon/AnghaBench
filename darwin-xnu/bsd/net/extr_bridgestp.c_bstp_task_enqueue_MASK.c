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
struct bstp_task {int bt_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bstp_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bstp_task_mtx ; 
 int /*<<< orphan*/  bstp_task_queue ; 
 int /*<<< orphan*/  bt_next ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct bstp_task *bt)
{
	FUNC1(bstp_task_mtx);

	if (bt->bt_count) {
		bt->bt_count++;
		FUNC2(bstp_task_mtx);
		FUNC3(&bstp_task_queue);
		return;
	}
	
	bt->bt_count = 1;
	FUNC0(&bstp_task_queue, bt, bt_next);
	
	FUNC2(bstp_task_mtx);
	
	FUNC3(&bstp_task_queue);
}