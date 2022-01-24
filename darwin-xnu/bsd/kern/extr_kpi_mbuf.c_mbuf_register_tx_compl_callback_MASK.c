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
typedef  int /*<<< orphan*/ * mbuf_tx_compl_func ;
typedef  scalar_t__ errno_t ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOSPC ; 
 int MAX_MBUF_TX_COMPL_FUNC ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** mbuf_tx_compl_table ; 
 int /*<<< orphan*/  mbuf_tx_compl_tbl_lock ; 

errno_t
FUNC3(mbuf_tx_compl_func callback)
{
	int i;
	errno_t error;

	if (callback == NULL)
		return (EINVAL);

	FUNC1(mbuf_tx_compl_tbl_lock);

	i = FUNC0(callback);
	if (i != -1) {
		error = EEXIST;
		goto unlock;
	}

	/* assume the worst */
	error = ENOSPC;
	for (i = 0; i < MAX_MBUF_TX_COMPL_FUNC; i++) {
		if (mbuf_tx_compl_table[i] == NULL) {
			mbuf_tx_compl_table[i] = callback;
			error = 0;
			goto unlock;
		}
	}
unlock:
	FUNC2(mbuf_tx_compl_tbl_lock);

	return (error);
}