#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int type; int /*<<< orphan*/  filename; } ;
struct TYPE_3__ {int type; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int CARTRIDGE_LAST_SUPPORTED ; 
 int CARTRIDGE_NONE ; 
 void* CARTRIDGE_UNKNOWN ; 
 int CARTRIDGE_autoreboot ; 
 TYPE_2__ CARTRIDGE_main ; 
 TYPE_1__ CARTRIDGE_piggyback ; 
 int FALSE ; 
 int TRUE ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

int FUNC4(char *string, char *ptr)
{
	if (FUNC3(string, "CARTRIDGE_FILENAME") == 0) {
		FUNC2(CARTRIDGE_main.filename, ptr, sizeof(CARTRIDGE_main.filename));
		if (CARTRIDGE_main.type == CARTRIDGE_NONE)
			CARTRIDGE_main.type = CARTRIDGE_UNKNOWN;
	}
	else if (FUNC3(string, "CARTRIDGE_TYPE") == 0) {
		int value = FUNC1(ptr);
		if (value < 0 || value > CARTRIDGE_LAST_SUPPORTED)
			return FALSE;
		CARTRIDGE_main.type = value;
	}
	else if (FUNC3(string, "CARTRIDGE_PIGGYBACK_FILENAME") == 0) {
		FUNC2(CARTRIDGE_piggyback.filename, ptr, sizeof(CARTRIDGE_piggyback.filename));
		if (CARTRIDGE_piggyback.type == CARTRIDGE_NONE)
			CARTRIDGE_piggyback.type = CARTRIDGE_UNKNOWN;
	}
	else if (FUNC3(string, "CARTRIDGE_PIGGYBACK_TYPE") == 0) {
		int value = FUNC1(ptr);
		if (value < 0 || value > CARTRIDGE_LAST_SUPPORTED)
			return FALSE;
		CARTRIDGE_piggyback.type = value;
	}
	else if (FUNC3(string, "CARTRIDGE_AUTOREBOOT") == 0) {
		int value = FUNC0(ptr);
		if (value < 0)
			return FALSE;
		CARTRIDGE_autoreboot = value;
	}
	else return FALSE;
	return TRUE;
}