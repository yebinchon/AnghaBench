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
typedef  int LOCKMODE ;

/* Variables and functions */
 int AccessShareLock ; 
 int /*<<< orphan*/  ERROR ; 
 int ExclusiveLock ; 
 int RowExclusiveLock ; 
 int ShareLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static LOCKMODE
FUNC1(int mode)
{
	if (mode == ExclusiveLock)
	{
		return ExclusiveLock;
	}
	else if (mode == ShareLock)
	{
		return ShareLock;
	}
	else if (mode == AccessShareLock)
	{
		return AccessShareLock;
	}
	else if (mode == RowExclusiveLock)
	{
		return RowExclusiveLock;
	}
	else
	{
		FUNC0(ERROR, "unsupported lockmode %d", mode);
	}
}