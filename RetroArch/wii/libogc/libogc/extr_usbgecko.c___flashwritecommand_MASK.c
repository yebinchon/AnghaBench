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
typedef  int u32 ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  EXI_DEVICE_0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXI_SPEED16MHZ ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXI_WRITE ; 

__attribute__((used)) static __inline__ int FUNC3(s32 chn, u32 flashaddress, u8 flashdata)
{
	s32 ret = 0;
	u32 val = 0xE0000000|(flashaddress<<9)|(flashdata<<1);

	if (flashaddress > 0x7FFFF)
		return 0;

	if(!FUNC2(chn,EXI_DEVICE_0,EXI_SPEED16MHZ)) ret |= 0x01;
	if(!FUNC1(chn,&val,sizeof(u32),EXI_WRITE)) ret |= 0x02;
	if(!FUNC1(chn,&val,sizeof(u32),EXI_WRITE)) ret |= 0x04;
	if(!FUNC0(chn)) ret |= 0x08;

	if(ret) return 0;
	return 1;
}