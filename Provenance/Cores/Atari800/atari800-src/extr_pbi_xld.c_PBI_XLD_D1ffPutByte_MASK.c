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
 scalar_t__ DISK_MASK ; 
 scalar_t__ MEMORY_mem ; 
 scalar_t__ MODEM_MASK ; 
 int PBI_NOT_HANDLED ; 
 scalar_t__ VOICE_MASK ; 
 scalar_t__ diskrom ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ voicerom ; 
 scalar_t__ xld_d_enabled ; 

int FUNC3(UBYTE byte)
{
	int result = 0; /* handled */
	if (xld_d_enabled && byte == DISK_MASK) {
		FUNC1(MEMORY_mem + 0xd800, diskrom, 0x800);
		FUNC0(FUNC2("DISK rom activated\n"));
	} 
	else if (byte == MODEM_MASK) {
		FUNC1(MEMORY_mem + 0xd800, voicerom + 0x800, 0x800);
		FUNC0(FUNC2("MODEM rom activated\n"));
	} 
	else if (byte == VOICE_MASK) { 
		FUNC1(MEMORY_mem + 0xd800, voicerom, 0x800);
		FUNC0(FUNC2("VOICE rom activated\n"));
	}
	else result = PBI_NOT_HANDLED;
	return result;
}