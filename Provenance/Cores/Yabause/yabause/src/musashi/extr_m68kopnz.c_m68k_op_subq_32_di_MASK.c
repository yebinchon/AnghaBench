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
typedef  int uint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 int /*<<< orphan*/  FLAG_X ; 
 int /*<<< orphan*/  FLAG_Z ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int REG_IR ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

void FUNC7(void)
{
	uint src = (((REG_IR >> 9) - 1) & 7) + 1;
	uint ea = FUNC1();
	uint dst = FUNC5(ea);
	uint res = dst - src;

	FLAG_N = FUNC3(res);
	FLAG_Z = FUNC2(res);
	FLAG_X = FLAG_C = FUNC0(src, dst, res);
	FLAG_V = FUNC4(src, dst, res);

	FUNC6(ea, FLAG_Z);
}