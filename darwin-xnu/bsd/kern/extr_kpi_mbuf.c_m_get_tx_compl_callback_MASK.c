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
typedef  size_t u_int32_t ;
typedef  int /*<<< orphan*/ * mbuf_tx_compl_func ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t MAX_MBUF_TX_COMPL_FUNC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** mbuf_tx_compl_table ; 
 int /*<<< orphan*/  mbuf_tx_compl_tbl_lock ; 

mbuf_tx_compl_func
FUNC3(u_int32_t idx)
{
	mbuf_tx_compl_func cb;

	if (idx >= MAX_MBUF_TX_COMPL_FUNC) {
		FUNC0(0);
		return (NULL);
	}
	FUNC1(mbuf_tx_compl_tbl_lock);
	cb = mbuf_tx_compl_table[idx];
	FUNC2(mbuf_tx_compl_tbl_lock);
	return (cb);
}