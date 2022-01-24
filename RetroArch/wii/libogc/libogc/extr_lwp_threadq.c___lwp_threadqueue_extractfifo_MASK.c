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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  lwp_thrqueue ;
struct TYPE_5__ {int /*<<< orphan*/  node; } ;
struct TYPE_6__ {int /*<<< orphan*/  timer; TYPE_1__ object; int /*<<< orphan*/  cur_state; } ;
typedef  TYPE_2__ lwp_cntrl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(lwp_thrqueue *queue,lwp_cntrl *thethread)
{
	u32 level;

	FUNC0(level);
	if(!FUNC3(thethread->cur_state)) {
		FUNC1(level);
		return;
	}

	FUNC2(&thethread->object.node);
	if(!FUNC6(&thethread->timer)) {
		FUNC1(level);
	} else {
		FUNC5(&thethread->timer);
		FUNC1(level);
		FUNC7(&thethread->timer);
	}
	FUNC4(thethread);
}