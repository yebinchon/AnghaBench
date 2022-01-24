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
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int ERANGE ; 
 int MAX_UPTRS ; 
 int /*<<< orphan*/  USER_ADDR_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int FUNC2 (void*,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,size_t*) ; 

int
FUNC7(proc_t p, user_addr_t buffer, uint32_t buffersize, int32_t *retval)
{
	uint32_t count = 0;
	int error = 0;
	void *kbuf = NULL;
	int32_t nuptrs = 0;

	if (buffer != USER_ADDR_NULL) {
		count = buffersize / sizeof(uint64_t);
		if (count > MAX_UPTRS) {
			count = MAX_UPTRS;
		}
		if (count > 0) {
			buffersize = count * sizeof(uint64_t);
			kbuf = FUNC3(buffersize);
			FUNC1(kbuf, buffersize);
			FUNC0(kbuf != NULL);
		} else {
			buffersize = 0;
		}
	} else {
		buffersize = 0;
	}

	nuptrs = FUNC4(p, kbuf, buffersize);

	if (kbuf) {
		size_t copysize;
		if (FUNC6(nuptrs, sizeof(uint64_t), &copysize)) {
			error = ERANGE;
			goto out;
		}
		if (copysize > buffersize) {
			copysize = buffersize;
		}
		error = FUNC2(kbuf, buffer, copysize);
	}

out:
	*retval = nuptrs;

	if (kbuf) {
		FUNC5(kbuf, buffersize);
		kbuf = NULL;
	}

	return error;
}