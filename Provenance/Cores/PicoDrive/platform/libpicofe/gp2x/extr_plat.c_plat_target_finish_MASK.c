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
typedef  int gp2x_soc_t ;

/* Variables and functions */
#define  SOCID_MMSP2 129 
#define  SOCID_POLLUX 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 

void FUNC3(void)
{
	gp2x_soc_t soc;

	soc = FUNC2();
	switch (soc)
	{
	case SOCID_MMSP2:
		FUNC0();
		break;
	case SOCID_POLLUX:
		FUNC1();
		break;
	default:
		break;
	}
}