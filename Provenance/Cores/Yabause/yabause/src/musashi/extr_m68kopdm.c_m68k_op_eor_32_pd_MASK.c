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
 int /*<<< orphan*/  CFLAG_CLEAR ; 
 int DX ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 int FLAG_Z ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  VFLAG_CLEAR ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

void FUNC4(void)
{
	uint ea = FUNC0();
	uint res = DX ^ FUNC2(ea);

	FUNC3(ea, res);

	FLAG_N = FUNC1(res);
	FLAG_Z = res;
	FLAG_C = CFLAG_CLEAR;
	FLAG_V = VFLAG_CLEAR;
}