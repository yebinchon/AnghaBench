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
 char* PROG_NAME ; 
 int PROG_VMAJOR ; 
 int PROG_VMINOR ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(const char *progname, const char *msg, int verbose)
{
	const char *nm = FUNC0((char *)progname);

	if (msg)
		FUNC2("%s\n\n", msg);

	FUNC2("%s v%d.%d\n", PROG_NAME, PROG_VMAJOR, PROG_VMINOR);
	FUNC2("usage: %s [op] [-v] [-i id] [-t type] [-p pid] [-u uid] [-g gid] [-l login] [-G {groupspec}] [-m gmuid]\n", nm);
	if (!verbose)
		FUNC1(1);

	FUNC2("\t%-15s\tOne of: create | destroy | lookup | support\n", "[op]");
	FUNC2("\t%-15s\tBe verbose\n", "-v");

	FUNC2("\t%-15s\tID of the persona\n", "-i id");
	FUNC2("\t%-15s\tType of the persona\n", "-t type");
	FUNC2("\t%-15s\tPID of the process whose persona info to lookup\n", "-p pid");
	FUNC2("\t%-15s\tUID to use in lookup\n", "-u uid");
	FUNC2("\t%-15s\tGID of the persona\n", "-g gid");
	FUNC2("\t%-15s\tLogin name of the persona\n", "-l login");
	FUNC2("\t%-15s\tGroups to which the persona will belong\n", "-G {groupspec}");
	FUNC2("\t%-15s\tgroupspec: G1{,G2,G3...}\n", " ");
	FUNC2("\t%-15s\tUID used for memberd lookup (opt-in to memberd)\n", "-m gmuid");

	FUNC2("\n");
	FUNC1(1);
}