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
 int /*<<< orphan*/  CPU_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int DY ; 
 int /*<<< orphan*/  FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 int FLAG_Z ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  VFLAG_CLEAR ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void)
{
	if(FUNC0(CPU_TYPE))
	{
		uint* r_dst = &DY;

		*r_dst = FUNC2(*r_dst) | (FUNC1(*r_dst) ? 0xffffff00 : 0);

		FLAG_N = FUNC3(*r_dst);
		FLAG_Z = *r_dst;
		FLAG_V = VFLAG_CLEAR;
		FLAG_C = CFLAG_CLEAR;
		return;
	}
	FUNC4();
}