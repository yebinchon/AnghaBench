#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct workqueue {int /*<<< orphan*/  wq_thidlelist; } ;
struct TYPE_3__ {int /*<<< orphan*/  has_stack; } ;
struct TYPE_4__ {TYPE_1__ uus_workq_park_data; } ;
struct uthread {TYPE_2__ uu_save; } ;

/* Variables and functions */
 struct uthread* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct uthread* FUNC1 (struct uthread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uu_workq_entry ; 
 int /*<<< orphan*/  workq_uthread_head ; 

__attribute__((used)) static inline struct uthread *
FUNC3(struct workqueue *wq)
{
	struct uthread *uth = FUNC0(&wq->wq_thidlelist, workq_uthread_head);

	if (uth && !uth->uu_save.uus_workq_park_data.has_stack) {
		uth = FUNC1(uth, workq_uthread_head, uu_workq_entry);
		if (uth) {
			FUNC2(uth->uu_save.uus_workq_park_data.has_stack);
		}
	}
	return uth;
}