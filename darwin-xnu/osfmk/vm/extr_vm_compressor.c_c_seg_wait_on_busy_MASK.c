#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  event_t ;
typedef  TYPE_1__* c_segment_t ;
struct TYPE_3__ {int c_wanted; int /*<<< orphan*/  c_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(c_segment_t c_seg)
{
	c_seg->c_wanted = 1;
	FUNC0((event_t) (c_seg), THREAD_UNINT);

	FUNC1(&c_seg->c_lock);
	FUNC2(THREAD_CONTINUE_NULL);
}