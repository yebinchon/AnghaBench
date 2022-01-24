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
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  KRREG_P ; 
 int /*<<< orphan*/  SSP_X ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dirty_regb ; 

__attribute__((used)) static void FUNC4(int const_val)
{
	FUNC0(4, 4, 16);		// mov  r4, r4, lsl #16
	FUNC1(4, 4, 16);		// mov  r4, r4, lsr #16
	FUNC2(4, 4, 0, 16);		// orr  r4, r4, r0, lsl #16
	dirty_regb |= KRREG_P;			// touching X or Y makes P dirty.
	FUNC3(SSP_X);
}