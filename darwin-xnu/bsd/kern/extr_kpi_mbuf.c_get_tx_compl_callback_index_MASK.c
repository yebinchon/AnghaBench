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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  mbuf_tx_compl_func ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mbuf_tx_compl_tbl_lock ; 

__attribute__((used)) static u_int32_t
FUNC3(mbuf_tx_compl_func callback)
{
	u_int32_t i;

	FUNC1(mbuf_tx_compl_tbl_lock);

	i = FUNC0(callback);

	FUNC2(mbuf_tx_compl_tbl_lock);

	return (i);
}