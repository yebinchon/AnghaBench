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
struct workqueue {int /*<<< orphan*/  wq_refcnt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct workqueue*) ; 

__attribute__((used)) static void
FUNC2(struct workqueue *wq)
{
	if (FUNC0(&wq->wq_refcnt) == 0) {
		FUNC1(wq);
	}
}