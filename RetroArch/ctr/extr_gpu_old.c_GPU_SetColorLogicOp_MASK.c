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
typedef  int /*<<< orphan*/  GPU_LOGICOP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPUREG_COLOR_OPERATION ; 
 int /*<<< orphan*/  GPUREG_LOGIC_OP ; 

void FUNC2(GPU_LOGICOP op)
{
	FUNC1(GPUREG_LOGIC_OP, op);
	FUNC0(GPUREG_COLOR_OPERATION, 0x2, 0x00000000);
}