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

/* Variables and functions */
 char* PERSONA_TEST_NAME ; 
 int PERSONA_TEST_VMAJOR ; 
 int PERSONA_TEST_VMINOR ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(const char *progname, int verbose)
{
	const char *nm = FUNC0((char *)progname);

	FUNC2("%s v%d.%d\n", PERSONA_TEST_NAME, PERSONA_TEST_VMAJOR, PERSONA_TEST_VMINOR);
	FUNC2("usage: %s [-I id] [-V] [-u uid] [-g gid] [-vw] progname [args...]\n", nm);
	FUNC2("       Spawn a new process into a new or existing persona.\n");
	if (!verbose)
		FUNC1(1);

	FUNC2("\t%-10s\tID of the persona\n", "-I id");
	FUNC2("\t%-10s\tVerify persona parameters against existing persona (given by -I)\n", "-V");
	FUNC2("\t%-10s\tOverride/verify the user ID of the new process\n", "-u uid");
	FUNC2("\t%-10s\tOverride/verify the group ID of the new process\n", "-g gid");
	FUNC2("\t%-15s\tGroups to which the persona will belong\n", "-G {groupspec}");
	FUNC2("\t%-15s\tgroupspec: G1{,G2,G3...}\n", " ");
	FUNC2("\t%-10s\tBe verbose\n", "-v");
	FUNC2("\t%-10s\tDo not wait for the child process\n", "-w");
	FUNC2("\n");

	FUNC1(1);
}