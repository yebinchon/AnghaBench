#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* c_segment_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_5__ {scalar_t__ c_busy; int /*<<< orphan*/  c_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ C_SWAPOUT_LIMIT ; 
 int /*<<< orphan*/  DELAYED_COMPACTIONS_PER_PASS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 scalar_t__ TRUE ; 
 scalar_t__ VM_CONFIG_SWAP_IS_ACTIVE ; 
 int /*<<< orphan*/ * c_list_lock ; 
 int /*<<< orphan*/  c_minor_list_head ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ c_swapout_count ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(boolean_t flush_all)
{
	c_segment_t	c_seg;
	int		number_compacted = 0;
	boolean_t	needs_to_swap = FALSE;


#if !CONFIG_EMBEDDED
	FUNC1(c_list_lock, LCK_MTX_ASSERT_OWNED);
#endif /* !CONFIG_EMBEDDED */

	while (!FUNC7(&c_minor_list_head) && needs_to_swap == FALSE) {
		
		c_seg = (c_segment_t)FUNC8(&c_minor_list_head);
		
		FUNC5(&c_seg->c_lock);

		if (c_seg->c_busy) {

			FUNC6(c_list_lock);
			FUNC3(c_seg);
			FUNC5(c_list_lock);

			continue;
		}
		FUNC0(c_seg);

		FUNC2(c_seg, TRUE, FALSE, TRUE);

		if (VM_CONFIG_SWAP_IS_ACTIVE && (number_compacted++ > DELAYED_COMPACTIONS_PER_PASS)) {
			
			if ((flush_all == TRUE || FUNC4() == TRUE) && c_swapout_count < C_SWAPOUT_LIMIT)
				needs_to_swap = TRUE;

			number_compacted = 0;
		}
		FUNC5(c_list_lock);
	}
}