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

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  c_list_lock ; 
 int /*<<< orphan*/  c_swappedout_list_head ; 
 int /*<<< orphan*/  c_swappedout_sparse_list_head ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fastwake_warmup ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(void)
{

	FUNC1(c_list_lock);

	if (FUNC3(&c_swappedout_list_head) && FUNC3(&c_swappedout_sparse_list_head)) {

		FUNC2(c_list_lock);
		return;
	}

	fastwake_warmup = TRUE;

	FUNC0(&c_swappedout_list_head, TRUE);

	FUNC0(&c_swappedout_sparse_list_head, TRUE);

	fastwake_warmup = FALSE;

	FUNC2(c_list_lock);

}