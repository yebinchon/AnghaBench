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
 int DBG_FUNC_END ; 
 int /*<<< orphan*/  DBG_MACH_EXCP_SC ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

void
FUNC2(
			unsigned int retval,
			unsigned int call_number)
{
	FUNC0(KDEBUG_TRACE,
		FUNC1(DBG_MACH_EXCP_SC, (call_number)) | DBG_FUNC_END,
		retval, 0, 0, 0, 0);
}