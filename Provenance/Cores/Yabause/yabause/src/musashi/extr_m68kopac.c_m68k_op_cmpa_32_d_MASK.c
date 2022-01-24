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
typedef  scalar_t__ uint ;

/* Variables and functions */
 scalar_t__ AX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ DY ; 
 int /*<<< orphan*/  FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 int /*<<< orphan*/  FLAG_Z ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 

void FUNC4(void)
{
	uint src = DY;
	uint dst = AX;
	uint res = dst - src;

	FLAG_N = FUNC2(res);
	FLAG_Z = FUNC1(res);
	FLAG_V = FUNC3(src, dst, res);
	FLAG_C = FUNC0(src, dst, res);
}