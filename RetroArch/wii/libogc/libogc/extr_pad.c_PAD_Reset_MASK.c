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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int __pad_checkingbits ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int __pad_enabledbits ; 
 int __pad_pendingbits ; 
 int __pad_recalibratebits ; 
 int __pad_resettingbits ; 
 int __pad_resettingchan ; 
 int __pad_spec ; 
 int __pad_waitingbits ; 

u32 FUNC4(u32 mask)
{
	u32 level;
	u32 pend_bits,en_bits;

	FUNC1(level);
	pend_bits = (__pad_pendingbits|mask);
	__pad_pendingbits = 0;

	pend_bits &= ~(__pad_waitingbits|__pad_checkingbits);
	__pad_resettingbits |= pend_bits;

	en_bits = (__pad_resettingbits&__pad_enabledbits);
	__pad_enabledbits &= ~pend_bits;

	if(__pad_spec==4) __pad_recalibratebits |= pend_bits;

	FUNC0(en_bits);
	if(__pad_resettingchan==32) FUNC3();
	FUNC2(level);

	return 1;
}