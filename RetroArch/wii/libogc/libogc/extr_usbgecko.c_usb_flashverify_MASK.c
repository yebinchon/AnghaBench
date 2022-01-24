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
typedef  int u8 ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int,int*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(s32 chn)
{
	u8 id[2];
	s32 ret=0;

	FUNC4(chn);

	if (FUNC2(chn) &&FUNC1(chn, 0, id+0) &&
	    FUNC1(chn, 1, id+1) &&	id[0] == 0xBF && id[1] == 0xD7 &&
	    FUNC3(chn))
		ret = 1;

	FUNC0(chn);

	return ret;
}