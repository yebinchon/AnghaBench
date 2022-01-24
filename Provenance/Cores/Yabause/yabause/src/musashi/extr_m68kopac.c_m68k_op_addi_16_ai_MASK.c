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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 int /*<<< orphan*/  FLAG_X ; 
 int /*<<< orphan*/  FLAG_Z ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC8(void)
{
	uint src = FUNC4();
	uint ea = FUNC1();
	uint dst = FUNC6(ea);
	uint res = src + dst;

	FLAG_N = FUNC3(res);
	FLAG_V = FUNC5(src, dst, res);
	FLAG_X = FLAG_C = FUNC0(res);
	FLAG_Z = FUNC2(res);

	FUNC7(ea, FLAG_Z);
}