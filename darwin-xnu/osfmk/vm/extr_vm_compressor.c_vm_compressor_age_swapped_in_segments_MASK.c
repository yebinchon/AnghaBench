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
typedef  scalar_t__ clock_sec_t ;
typedef  int /*<<< orphan*/  clock_nsec_t ;
typedef  TYPE_1__* c_segment_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_3__ {scalar_t__ c_swappedin_ts; int /*<<< orphan*/  c_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_ON_AGE_Q ; 
 scalar_t__ C_SEGMENT_SWAPPEDIN_AGE_LIMIT ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  c_swappedin_list_head ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(boolean_t flush_all)
{
	c_segment_t	c_seg;
	clock_sec_t	now;
	clock_nsec_t	nsec;

	FUNC1(&now,  &nsec);
			
	while (!FUNC4(&c_swappedin_list_head)) {

		c_seg = (c_segment_t)FUNC5(&c_swappedin_list_head);

		if (flush_all == FALSE && (now - c_seg->c_swappedin_ts) < C_SEGMENT_SWAPPEDIN_AGE_LIMIT)
			break;
			
		FUNC2(&c_seg->c_lock);

		FUNC0(c_seg, C_ON_AGE_Q, FALSE);

		FUNC3(&c_seg->c_lock);
	}
}