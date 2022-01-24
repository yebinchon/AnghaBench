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
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 int /*<<< orphan*/  G_FILE_ERROR ; 
 int /*<<< orphan*/  G_STRLOC ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC10(const char *pid_file, GError **gerr) {
	int fd;
	int ret = 0;

	gchar *pid_str;

	/**
	 * write the PID file
	 */

	if (-1 == (fd = FUNC7(pid_file, O_WRONLY|O_TRUNC|O_CREAT, 0600))) {
		FUNC3(gerr,
				G_FILE_ERROR,
				FUNC1(errno),
				"%s: open(%s) failed: %s", 
				G_STRLOC,
				pid_file,
				FUNC5(errno));

		return -1;
	}

	pid_str = FUNC4("%d", FUNC6());

	if (FUNC9(fd, pid_str, FUNC8(pid_str)) < 0) {
		FUNC3(gerr,
				G_FILE_ERROR,
				FUNC1(errno),
				"%s: write(%s) of %s failed: %s", 
				G_STRLOC,
				pid_file,
				pid_str,
				FUNC5(errno));
		ret = -1;
	}
	FUNC2(pid_str);

	FUNC0(fd);

	return ret;
}