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
typedef  scalar_t__ wq_thactive_t ;
typedef  int /*<<< orphan*/  thread_qos_t ;
struct workqueue {int /*<<< orphan*/ * wq_thscheduled_count; int /*<<< orphan*/  wq_thactive; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  relaxed ; 

__attribute__((used)) static inline void
FUNC3(struct workqueue *wq,
		thread_qos_t old_qos, thread_qos_t new_qos)
{
	wq_thactive_t v = FUNC1(new_qos) -
			FUNC1(old_qos);
	FUNC2(&wq->wq_thactive, v, relaxed);
	wq->wq_thscheduled_count[FUNC0(old_qos)]--;
	wq->wq_thscheduled_count[FUNC0(new_qos)]++;
}