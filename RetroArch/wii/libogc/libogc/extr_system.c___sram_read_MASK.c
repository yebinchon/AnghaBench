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
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  EXI_CHANNEL_0 ; 
 int /*<<< orphan*/  EXI_DEVICE_1 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EXI_READ ; 
 int /*<<< orphan*/  EXI_SPEED8MHZ ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXI_WRITE ; 

__attribute__((used)) static u32 FUNC8(void *buffer)
{
	u32 command,ret;

	FUNC0(buffer,64);

	if(FUNC4(EXI_CHANNEL_0,EXI_DEVICE_1,NULL)==0) return 0;
	if(FUNC5(EXI_CHANNEL_0,EXI_DEVICE_1,EXI_SPEED8MHZ)==0) {
		FUNC7(EXI_CHANNEL_0);
		return 0;
	}

	ret = 0;
	command = 0x20000100;
	if(FUNC3(EXI_CHANNEL_0,&command,4,EXI_WRITE,NULL)==0) ret |= 0x01;
	if(FUNC6(EXI_CHANNEL_0)==0) ret |= 0x02;
	if(FUNC2(EXI_CHANNEL_0,buffer,64,EXI_READ,NULL)==0) ret |= 0x04;
	if(FUNC6(EXI_CHANNEL_0)==0) ret |= 0x08;
	if(FUNC1(EXI_CHANNEL_0)==0) ret |= 0x10;
	if(FUNC7(EXI_CHANNEL_0)==0) ret |= 0x20;

	if(ret) return 0;
	return 1;
}