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
typedef  scalar_t__ Oid ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ PROVOLATILE_VOLATILE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC2(Oid func_id, void *context)
{
	if (func_id == FUNC0())
	{
		return false;
	}

	return (FUNC1(func_id) == PROVOLATILE_VOLATILE);
}