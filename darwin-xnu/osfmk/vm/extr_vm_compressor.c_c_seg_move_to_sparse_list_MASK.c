#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* c_segment_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_6__ {int /*<<< orphan*/  c_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_ON_SWAPPEDOUTSPARSE_Q ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * c_list_lock ; 
 int /*<<< orphan*/  c_seg_moved_to_sparse_list ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(c_segment_t c_seg)
{
	boolean_t	clear_busy = FALSE;

	if ( !FUNC4(c_list_lock)) {
		FUNC0(c_seg);

		FUNC5(&c_seg->c_lock);
		FUNC3(c_list_lock);
		FUNC3(&c_seg->c_lock);
		
		clear_busy = TRUE;
	}
	FUNC2(c_seg, C_ON_SWAPPEDOUTSPARSE_Q, FALSE);

	c_seg_moved_to_sparse_list++;

	FUNC5(c_list_lock);

	if (clear_busy == TRUE)
		FUNC1(c_seg);
}