#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  TYPE_1__* thread_t ;
struct TYPE_4__ {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

vm_map_t
FUNC5(
	vm_map_t	map)
{
	int		mycpu;
	thread_t	thread = FUNC2();
	vm_map_t	oldmap = thread->map;

	FUNC3();
	mycpu = FUNC1();

	/*
	 *	Deactivate the current map and activate the requested map
	 */
	FUNC0(thread, map, mycpu);

	FUNC4();
	return(oldmap);
}