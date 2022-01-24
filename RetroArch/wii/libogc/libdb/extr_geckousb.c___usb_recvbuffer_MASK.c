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
 int /*<<< orphan*/  EXI_DEVICE_0 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,char*) ; 

__attribute__((used)) static int FUNC4(s32 chn,void *buffer,int size)
{
	s32 ret;
	s32 left = size;
	char *ptr = (char*)buffer;

	if(!FUNC0(chn,EXI_DEVICE_0,NULL)) return 0;

	while(left>0) {
		if(FUNC2(chn)) {
			ret = FUNC3(chn,ptr);
			if(ret==0) break;

			ptr++;
			left--;
		}
	}

	FUNC1(chn);
	return (size - left);
}