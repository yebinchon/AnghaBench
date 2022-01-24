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
typedef  int /*<<< orphan*/  winding_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  c_active_windings ; 
 int /*<<< orphan*/  c_windingmemory ; 
 int numthreads ; 

void FUNC3 (winding_t *w)
{
	if (*(unsigned *)w == 0xdeaddead)
		FUNC0 ("FreeWinding: freed a freed winding");

	if (numthreads == 1)
	{
		c_active_windings--;
		c_windingmemory -= FUNC2(w);
	} //end if

	*(unsigned *)w = 0xdeaddead;

	FUNC1(w);
}