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
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t s32 ;

/* Variables and functions */
 int /*<<< orphan*/  EXI_DEVICE_0 ; 
 scalar_t__ FUNC0 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __usbgecko_exi_unlock ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  usbgecko_inited ; 
 int /*<<< orphan*/ * wait_exi_queue ; 

__attribute__((used)) static __inline__ void FUNC5(s32 chn)
{
	u32 level;

	FUNC2(level);
	if(!usbgecko_inited) FUNC4();
	while(FUNC0(chn,EXI_DEVICE_0,__usbgecko_exi_unlock)==0) {
		FUNC1(wait_exi_queue[chn]);
	}
	FUNC3(level);
}