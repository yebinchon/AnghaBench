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
struct workqueue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WORKQ_THREADREQ_CREATOR_SYNC_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (struct workqueue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct workqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct workqueue*) ; 

void
FUNC3(struct workqueue *wq, bool locked)
{
	if (!locked) FUNC0(wq);
	FUNC1(NULL, wq, WORKQ_THREADREQ_CREATOR_SYNC_UPDATE);
	if (!locked) FUNC2(wq);
}