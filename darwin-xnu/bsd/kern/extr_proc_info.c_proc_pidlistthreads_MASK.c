#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  TYPE_1__* proc_t ;
typedef  int int32_t ;
struct TYPE_3__ {int /*<<< orphan*/  task; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int) ; 

int 
FUNC6(proc_t p, bool thuniqueid, user_addr_t buffer, uint32_t  buffersize, int32_t *retval)
{
	uint32_t count = 0;
	int ret = 0;
	int error = 0;
	void * kbuf;
	uint32_t numthreads = 0;

	int num = FUNC3(p->task) + 10;
	if (num > 0) {
		numthreads = (uint32_t)num;
	}

	count = buffersize/(sizeof(uint64_t));

	if (numthreads > count) {
		numthreads = count;
	}

	kbuf = (void *)FUNC4(numthreads * sizeof(uint64_t));
	if (kbuf == NULL)
		return(ENOMEM);
	FUNC0(kbuf, numthreads * sizeof(uint64_t));
	
	ret = FUNC2(p->task, kbuf, numthreads, thuniqueid);
	
	error = FUNC1(kbuf, buffer, ret);
	FUNC5(kbuf, numthreads * sizeof(uint64_t));
	if (error == 0)
		*retval = ret;
	return(error);
	
}