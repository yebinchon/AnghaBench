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
struct proc {int dummy; } ;

/* Variables and functions */
 struct workqueue* FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct workqueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,struct workqueue*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct workqueue*) ; 

void
FUNC4(struct proc *p, int flags)
{
	struct workqueue *wq = FUNC0(p);

	FUNC1(wq);
	FUNC2(p, wq, flags);
	FUNC3(wq);
}