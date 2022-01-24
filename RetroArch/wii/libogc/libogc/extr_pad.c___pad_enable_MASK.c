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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int __pad_analogmode ; 
 int /*<<< orphan*/  __pad_enabledbits ; 

__attribute__((used)) static void FUNC4(u32 chan)
{
	u32 buf[2];
	__pad_enabledbits |= FUNC0(chan);
	FUNC2(chan,(void*)buf);
	FUNC3(chan,(__pad_analogmode|0x00400000));
	FUNC1(__pad_enabledbits);
}