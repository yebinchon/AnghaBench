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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ssp_block_table ; 
 int /*<<< orphan*/ * ssp_block_table_iram ; 

void FUNC2(void)
{
	FUNC1(ssp_block_table);
	FUNC1(ssp_block_table_iram);
	ssp_block_table = ssp_block_table_iram = NULL;

	FUNC0();
}