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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int FLAG_V ; 
 int /*<<< orphan*/  FLAG_X ; 
 int /*<<< orphan*/  FLAG_Z ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
	uint ea = FUNC1();
	uint src = FUNC4(ea);
	uint res = 0 - src;

	FLAG_N = FUNC3(res);
	FLAG_C = FLAG_X = FUNC0(res);
	FLAG_V = src & res;
	FLAG_Z = FUNC2(res);

	FUNC5(ea, FLAG_Z);
}