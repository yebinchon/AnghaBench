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
 int O_CLOEXEC ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 scalar_t__ PATH_MAX ; 
 int /*<<< orphan*/  TEST_PASSCODE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  T_SETUPBEGIN ; 
 int /*<<< orphan*/  T_SETUPEND ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  T_WITH_ERRNO ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  cleanup ; 
 int /*<<< orphan*/  g_dirpath ; 
 int /*<<< orphan*/  g_fd ; 
 int /*<<< orphan*/  g_filepath ; 
 int /*<<< orphan*/  g_subdirpath ; 
 char* g_test_tempdir ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC14 () ; 

void
FUNC15(void) {
	int ret = 0;
	int local_result = -1;

	T_SETUPBEGIN;

	FUNC4(cleanup);

	T_WITH_ERRNO;
	FUNC3(
		FUNC9(g_test_tempdir),
		"Create temporary directory for test"
	);
	FUNC5("Test temp dir: %s", g_test_tempdir);

	FUNC2(
		local_result = FUNC14(),
		-1,
		"Get content protection support status"
	);

	if(local_result == 0) {
		FUNC6("Data protection not supported on this system");
	}

	FUNC0(
		FUNC8(),
		0,
		"Device should not have existing passcode"
	);

	FUNC0(
		FUNC11(TEST_PASSCODE, NULL),
		0,
		"Set test passcode"
	);

	FUNC7(g_filepath, PATH_MAX);
	FUNC7(g_dirpath, PATH_MAX);
	FUNC7(g_subdirpath, PATH_MAX);

	ret |= (FUNC12(g_filepath, g_test_tempdir, PATH_MAX) == PATH_MAX);
	ret |= (FUNC12(g_filepath, "/", PATH_MAX) == PATH_MAX);
	ret |= (FUNC13(g_dirpath, g_filepath, PATH_MAX) == PATH_MAX);
	ret |= (FUNC12(g_filepath, "test_file", PATH_MAX) == PATH_MAX);
	ret |= (FUNC12(g_dirpath, "test_dir/", PATH_MAX) == PATH_MAX);
	ret |= (FUNC13(g_subdirpath, g_dirpath, PATH_MAX) == PATH_MAX);
	ret |= (FUNC12(g_subdirpath, "test_subdir/", PATH_MAX) == PATH_MAX);

	T_QUIET;
	FUNC0(ret, 0, "Initialize test path strings");

	T_WITH_ERRNO;
	FUNC1(
		g_fd = FUNC10(g_filepath, O_CREAT|O_EXCL|O_RDWR|O_CLOEXEC, 0777),
		0,
		"Create test file"
	);

	T_SETUPEND;
}