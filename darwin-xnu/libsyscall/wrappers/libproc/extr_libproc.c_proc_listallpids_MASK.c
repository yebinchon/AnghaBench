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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  PROC_ALL_PIDS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 

int 
FUNC1(void * buffer, int buffersize)
{
	int numpids;
	numpids = FUNC0(PROC_ALL_PIDS, (uint32_t)0, buffer, buffersize);

	if (numpids == -1)
		return(-1);
	else
		return(numpids/sizeof(int));
}