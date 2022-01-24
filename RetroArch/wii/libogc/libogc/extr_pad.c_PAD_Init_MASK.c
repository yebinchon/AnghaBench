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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  keyinput ;
struct TYPE_3__ {int chan; } ;

/* Variables and functions */
 int PAD_CHANMAX ; 
 int /*<<< orphan*/  PAD_PRODPADS ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int* __pad_cmdprobedevice ; 
 int __pad_initialized ; 
 TYPE_1__* __pad_keys ; 
 int __pad_recalibratebits ; 
 scalar_t__ __pad_spec ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pad_resetinfo ; 

u32 FUNC6()
{
	u32 chan;
	u16 prodpads = PAD_PRODPADS;
	if(__pad_initialized) return 1;

	if(__pad_spec) FUNC1(__pad_spec);

	FUNC5(__pad_keys,0,sizeof(keyinput)*PAD_CHANMAX);

	__pad_recalibratebits = 0xf0000000;

	chan = 0;
	while(chan<4) {
		__pad_keys[chan].chan = -1;
		__pad_cmdprobedevice[chan] = 0x4d000000|(chan<<22)|FUNC4(prodpads,8,14);
		chan++;
	}

	FUNC2();
	FUNC3(&pad_resetinfo);

	__pad_initialized = 1;
	return FUNC0(0xf0000000);
}