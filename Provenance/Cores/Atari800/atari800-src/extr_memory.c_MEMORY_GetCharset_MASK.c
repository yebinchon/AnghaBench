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
typedef  int /*<<< orphan*/  UBYTE ;

/* Variables and functions */
 scalar_t__ emuos_h ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int) ; 

void FUNC1(UBYTE *cs)
{
	/* copy font, but change screencode order to ATASCII order */
	FUNC0(cs, emuos_h + 0x200, 0x100); /* control chars */
	FUNC0(cs + 0x100, emuos_h, 0x200); /* !"#$..., uppercase letters */
	FUNC0(cs + 0x300, emuos_h + 0x300, 0x100); /* lowercase letters */
}