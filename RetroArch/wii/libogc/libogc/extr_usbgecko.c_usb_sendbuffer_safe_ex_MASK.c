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
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,char) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

int FUNC4(s32 chn,const void *buffer,int size, int retries)
{
	s32 ret;
	s32 left = size;
	char *ptr = (char*)buffer;

	FUNC3(chn);
	while(left>0) {
		if(FUNC1(chn)) {
			ret = FUNC2(chn,*ptr);
			if(ret==0) break;

			ptr++;
			left--;
		}

		if (retries >= 0) {
			retries--;
			if (retries == 0)
				break;
		}
	}
	FUNC0(chn);

	return (size - left);
}