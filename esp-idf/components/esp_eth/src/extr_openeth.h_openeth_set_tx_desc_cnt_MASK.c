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
 int OPENETH_DESC_CNT ; 
 int /*<<< orphan*/  OPENETH_TX_BD_NUM_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(int tx_desc_cnt)
{
    FUNC1(tx_desc_cnt <= OPENETH_DESC_CNT);
    FUNC0(OPENETH_TX_BD_NUM_REG, tx_desc_cnt);
}