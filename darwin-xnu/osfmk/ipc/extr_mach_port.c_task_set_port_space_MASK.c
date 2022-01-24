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
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ ipc_space_t ;

/* Variables and functions */
 scalar_t__ IS_NULL ; 
 scalar_t__ KERN_INVALID_TASK ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

kern_return_t
FUNC4(
 	ipc_space_t	space,
 	int		table_entries)
{
	kern_return_t kr;
	
	if (space == IS_NULL)
		return KERN_INVALID_TASK;

	FUNC2(space);

	if (!FUNC1(space)) {
		FUNC3(space);
		return KERN_INVALID_TASK;
	}

	kr = FUNC0(space, table_entries);
	if (kr == KERN_SUCCESS)
		FUNC3(space);
	return kr;
}