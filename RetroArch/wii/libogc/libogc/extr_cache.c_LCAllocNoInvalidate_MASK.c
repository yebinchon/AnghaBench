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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int) ; 

void FUNC5(void *addr,u32 bytes)
{
	u32 level;
	u32 cnt = bytes>>5;
	u32 hid2 = FUNC4(920);
	if(!(hid2&0x10000000)) {
		FUNC1(level);
		FUNC3();
		FUNC2(level);
	}
	FUNC0(FALSE,addr,cnt);
}