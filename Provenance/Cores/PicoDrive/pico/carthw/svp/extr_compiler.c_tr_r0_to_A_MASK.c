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
 int /*<<< orphan*/  SSP_A ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static void FUNC5(int const_val)
{
	if (FUNC4()) {
		FUNC0(5, 5, 16);	// mov  r5, r5, lsl #16
		FUNC1(5, 5, 16);	// mov  r5, r5, lsr #16  @ AL
		FUNC2(5, 5, 0, 16);	// orr  r5, r5, r0, lsl #16
	}
	else
		FUNC0(5, 0, 16);
	FUNC3(SSP_A);
}