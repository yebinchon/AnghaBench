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
 int /*<<< orphan*/  PROC_INFO_CALL_LISTCOALITIONS ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,void*,int) ; 

int
FUNC1(int flavor, int coaltype, void *buffer, int buffersize)
{
	int retval;

	if ((retval = FUNC0(PROC_INFO_CALL_LISTCOALITIONS, flavor, coaltype, 0, buffer, buffersize)) == -1)
		return 0;

	return retval;
}