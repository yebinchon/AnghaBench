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
typedef  size_t s32 ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 int SI_GC_WIRELESS ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SI_WIRELESS_CONT_MASK ; 
 int SI_WIRELESS_FIX_ID ; 
 int SI_WIRELESS_IR ; 
 int SI_WIRELESS_LITE ; 
 int SI_WIRELESS_RECEIVED ; 
 int __pad_checkingbits ; 
 int /*<<< orphan*/  __pad_cmdreadorigin ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int __pad_enabledbits ; 
 int /*<<< orphan*/ * __pad_origin ; 
 int /*<<< orphan*/  __pad_originupdatecallback ; 
 int __pad_waitingbits ; 

__attribute__((used)) static void FUNC3(s32 chan,u32 type)
{
	u32 mask,tmp;
	mask = FUNC0(chan);
	if(__pad_enabledbits&mask) {
		tmp = type&0xff;
		type &= ~0xff;
		__pad_waitingbits &= ~mask;
		__pad_checkingbits &= ~mask;
		if(!(tmp&0x0f)
			&& (type&SI_GC_WIRELESS) && (type&SI_WIRELESS_RECEIVED) && (type&SI_WIRELESS_FIX_ID)
			&& !(type&SI_WIRELESS_IR) && !(type&SI_WIRELESS_CONT_MASK) && !(type&SI_WIRELESS_LITE))  FUNC1(chan,&__pad_cmdreadorigin,1,__pad_origin[chan],10,__pad_originupdatecallback,0);
		else FUNC2(chan);
	}
}