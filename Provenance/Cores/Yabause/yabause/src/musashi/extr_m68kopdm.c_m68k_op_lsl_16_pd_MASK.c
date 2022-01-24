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
 int /*<<< orphan*/  VFLAG_CLEAR ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

void FUNC5(void)
{
	uint ea = FUNC0();
	uint src = FUNC3(ea);
	uint res = FUNC1(src << 1);

	FUNC4(ea, res);

	FLAG_N = FUNC2(res);
	FLAG_Z = res;
	FLAG_X = FLAG_C = src >> 7;
	FLAG_V = VFLAG_CLEAR;
}