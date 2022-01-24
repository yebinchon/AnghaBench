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
typedef  int /*<<< orphan*/  uuid_t ;
typedef  int /*<<< orphan*/  uuid_string_t ;
typedef  scalar_t__ uint32_t ;
struct uuid_command {int /*<<< orphan*/  uuid; } ;
struct mach_header_64 {scalar_t__ magic; unsigned int ncmds; } ;
struct mach_header {scalar_t__ magic; unsigned int ncmds; } ;
struct load_command {scalar_t__ cmd; scalar_t__ cmdsize; } ;

/* Variables and functions */
 scalar_t__ LC_UUID ; 
 scalar_t__ MH_CIGAM ; 
 scalar_t__ MH_CIGAM_64 ; 
 scalar_t__ MH_MAGIC ; 
 scalar_t__ MH_MAGIC_64 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mach_header*) ; 
 int /*<<< orphan*/  FUNC3 (struct mach_header_64*) ; 
 int /*<<< orphan*/  FUNC4 (struct mach_header*,size_t) ; 
 struct mach_header* FUNC5 (char*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(char *path, uuid_t uuid) {
	size_t len = 0;
	bool should_swap = false;
	unsigned int ncmds = 0;
	struct load_command *lc = NULL;
	bool ret = false;

	struct mach_header *h = FUNC5(path, &len);
	if (!h) {
		return false;
	}
	if (h->magic == MH_MAGIC || h->magic == MH_CIGAM) {
		//32-bit header
		struct mach_header *header = h;
		if (header->magic == MH_CIGAM) {
			FUNC2(header);
			should_swap = true;
		}
		ncmds = header->ncmds;
		//the first load command is after the header
		lc = (struct load_command *)(header + 1);
	} else if (h->magic == MH_MAGIC_64 || h->magic == MH_CIGAM_64) {
		//64-bit header
		struct mach_header_64 *header = (struct mach_header_64 *)h;
		if (header->magic == MH_CIGAM_64) {
			FUNC3(header);
			should_swap = true;
		}
		ncmds = header->ncmds;
		lc = (struct load_command *)(header + 1);
	} else {
		//this is not a Mach-O binary, or it is a FAT binary
		FUNC4(h, len);
		return false;
	}
	for (unsigned int i = 0; i < ncmds; i++) {
		uint32_t cmd = lc->cmd;
		uint32_t cmdsize = lc->cmdsize;
		if (should_swap) {
			FUNC0(cmd);
			FUNC0(cmdsize);
		}
		if (cmd == LC_UUID) {
			struct uuid_command *uuid_cmd =
					(struct uuid_command *)lc;
			FUNC6(uuid, uuid_cmd->uuid);
			uuid_string_t tuuid_str;
			FUNC7(uuid, tuuid_str);
			FUNC1("Trying test UUID %s", tuuid_str);
			ret = true;
			break;
		}
		lc = (struct load_command *)((uintptr_t)lc + cmdsize);
	}
	FUNC4(h, len);
	return ret;
}