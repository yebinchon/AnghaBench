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
 int /*<<< orphan*/  FUNC0 (void*,unsigned char*,size_t) ; 
 int FUNC1 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC5 (unsigned char*,size_t) ; 

__attribute__((used)) static int
FUNC6(const void *instr, size_t len, void *foldstr, size_t size)
{
	/* if len < size we need at most N * len bytes, ie < 2 * size;
	   if len > size we need at most 2 * len */
	int ret = 0;
	size_t maxlen = 2 * FUNC1(size, len);
	size_t l = 0;
	unsigned char tmp[maxlen];
	unsigned char buf[len];

	FUNC2(buf, instr, len);
	FUNC4(foldstr, 0, size);
	do {
		FUNC2(tmp + l, buf, len);
		l += len;
		ret = FUNC5(buf, len * 8);
		if (ret)
			goto out;
		while(l >= size) {
			FUNC0(foldstr, tmp, size);
			l -= size;
			if(l == 0)
				break;
			FUNC3(tmp, tmp + size, l);
		}
	} while(l != 0);
out:

	return ret;
}