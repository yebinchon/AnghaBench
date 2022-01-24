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
 int FUNC0 () ; 
 int FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 int FLAG_X ; 
 int FLAG_Z ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  VFLAG_CLEAR ; 
 int FUNC4 () ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

void FUNC7(void)
{
	uint ea = FUNC0();
	uint src = FUNC5(ea);
	uint res = FUNC3(src | (FUNC4() << 16), 1);

	FLAG_C = FLAG_X = res >> 8;
	res = FUNC1(res);

	FUNC6(ea, res);

	FLAG_N = FUNC2(res);
	FLAG_Z = res;
	FLAG_V = VFLAG_CLEAR;
}