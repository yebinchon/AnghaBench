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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void)
{
#ifdef PBI_PROTO80
	PBI_PROTO80_Exit();
#endif
#ifdef PBI_MIO
	PBI_MIO_Exit();
#endif
#ifdef PBI_BB
	PBI_BB_Exit();
#endif
#ifdef PBI_XLD
	PBI_XLD_Exit();
#endif
}