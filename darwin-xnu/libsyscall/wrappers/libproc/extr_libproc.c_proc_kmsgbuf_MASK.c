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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  PROC_INFO_CALL_KERNMSGBUF ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

int
FUNC1(void * buffer, uint32_t  buffersize)
{
	int retval;

	if ((retval = FUNC0(PROC_INFO_CALL_KERNMSGBUF, 0,  0, (uint64_t)0, buffer, buffersize)) == -1)
		return(0);
	return (retval);
}