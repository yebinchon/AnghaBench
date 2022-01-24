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
struct statfs {int /*<<< orphan*/ * f_fstypename; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIRPATH ; 
 int /*<<< orphan*/  FILEPATH ; 
 int /*<<< orphan*/  LINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  T_SETUPBEGIN ; 
 int /*<<< orphan*/  T_SETUPEND ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct statfs*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void)
{
	T_SETUPBEGIN;
	FUNC1(FUNC3(FUNC4()), NULL);

	// <rdar://problem/31780295> dt_tmpdir() should guarantee a clean directory for each run
	FUNC9(FILEPATH);
	FUNC9(LINK);
	FUNC6(DIRPATH);

	// Skip the test if the current working directory is not on APFS.
	struct statfs sfs = { 0 };
	T_QUIET; FUNC0(FUNC7(".", &sfs), NULL);
	if (FUNC5(&sfs.f_fstypename[0], "apfs", FUNC8("apfs")) != 0) {
		FUNC2("utimensat is APFS-only, but working directory is non-APFS");
	}

	T_SETUPEND;
}