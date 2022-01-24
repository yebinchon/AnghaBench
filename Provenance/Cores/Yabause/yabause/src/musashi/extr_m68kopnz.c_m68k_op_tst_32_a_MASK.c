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
typedef  int /*<<< orphan*/  uint ;

/* Variables and functions */
 int /*<<< orphan*/  AY ; 
 int /*<<< orphan*/  CFLAG_CLEAR ; 
 int /*<<< orphan*/  CPU_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 int /*<<< orphan*/  FLAG_Z ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VFLAG_CLEAR ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(void)
{
	if(FUNC0(CPU_TYPE))
	{
		uint res = AY;

		FLAG_N = FUNC1(res);
		FLAG_Z = res;
		FLAG_V = VFLAG_CLEAR;
		FLAG_C = CFLAG_CLEAR;
		return;
	}
	FUNC2();
}