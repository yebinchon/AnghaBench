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
 int FRAG_COUNT ; 
 unsigned int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int FUNC2 (void const*,int) ; 

int FUNC3(const void *buff, int len)
{
	static int lag_counter, skip_counter;
	unsigned int t;
	int ret;

	if (lag_counter > 2) {
		// skip writes if audio starts blocking
		lag_counter = 0;
		skip_counter = FRAG_COUNT;
	}

	if (skip_counter > 0) {
		skip_counter--;
		return len;
	}

	t = FUNC0();
	ret = FUNC2(buff, len);
	t = FUNC0() - t;
	if (t > 1) {
		// this shouldn't really happen, most likely audio is out of sync
		lag_counter++;
		if (lag_counter > 2)
			FUNC1("audio lag %u\n", t);
	}
	else
		lag_counter = 0;

	return ret;
}