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
struct mach_header {int /*<<< orphan*/  flags; int /*<<< orphan*/  sizeofcmds; int /*<<< orphan*/  ncmds; int /*<<< orphan*/  filetype; int /*<<< orphan*/  cpusubtype; int /*<<< orphan*/  cputype; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct mach_header *header) {
	FUNC0(header->magic);
	FUNC0(header->cputype);
	FUNC0(header->cpusubtype);
	FUNC0(header->filetype);
	FUNC0(header->ncmds);
	FUNC0(header->sizeofcmds);
	FUNC0(header->flags);
}