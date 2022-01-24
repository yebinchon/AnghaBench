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
typedef  scalar_t__ qboolean ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ dispatch ; 
 int oldf ; 
 scalar_t__ pacifier ; 
 int workcount ; 

void FUNC2 (int workcnt, qboolean showpacifier, void(*func)(int))
{
	int		i;
	int		start, end;

	dispatch = 0;
	workcount = workcnt;
	oldf = -1;
	pacifier = showpacifier;
	start = FUNC0 (); 
	func(0);

	end = FUNC0 ();
	if (pacifier)
		FUNC1 (" (%i)\n", end-start);
}