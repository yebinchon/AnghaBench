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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __pad_checkingbits ; 
 int /*<<< orphan*/  __pad_enabledbits ; 
 int /*<<< orphan*/  __pad_pendingbits ; 
 int /*<<< orphan*/  __pad_waitingbits ; 

__attribute__((used)) static void FUNC5(u32 chan)
{
	u32 level,mask;
	FUNC3(level);
	mask = FUNC0(chan);
	FUNC1(mask);
	__pad_enabledbits &= ~mask;
	__pad_waitingbits &= ~mask;
	__pad_pendingbits &= ~mask;
	__pad_checkingbits &= ~mask;
	FUNC2(chan,0);
	FUNC4(level);
}