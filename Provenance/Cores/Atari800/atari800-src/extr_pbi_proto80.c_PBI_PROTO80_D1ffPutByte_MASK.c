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
typedef  scalar_t__ UBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MEMORY_mem ; 
 int PBI_NOT_HANDLED ; 
 scalar_t__ PBI_PROTO80_enabled ; 
 scalar_t__ PROTO80_MASK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  proto80rom ; 

int FUNC3(UBYTE byte)
{
	int result = 0; /* handled */
	if (PBI_PROTO80_enabled && byte == PROTO80_MASK) {
		FUNC1(MEMORY_mem + 0xd800, proto80rom, 0x800);
		FUNC0(FUNC2("PROTO80 rom activated\n"));
	}
	else result = PBI_NOT_HANDLED;
	return result;
}