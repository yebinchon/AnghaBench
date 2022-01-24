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
 int KEY_ESC ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int save_and_exit ; 
 int /*<<< orphan*/  saved_x ; 
 int /*<<< orphan*/  saved_y ; 
 int /*<<< orphan*/  silent ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC10(void)
{
	int res;

	save_and_exit = 1;
	FUNC9();
	FUNC3();
	if (FUNC1())
		res = FUNC4(NULL,
				   FUNC0("Do you wish to save your new configuration?\n"
				     "(Press <ESC><ESC> to continue kernel configuration.)"),
				   6, 60);
	else
		res = -1;

	FUNC5(saved_x, saved_y);

	switch (res) {
	case 0:
		if (FUNC2(filename)) {
			FUNC6(stderr, "%s", FUNC0("\n\n"
					  "Error while writing of the configuration.\n"
					  "Your configuration changes were NOT saved."
					  "\n\n"));
			return 1;
		}
		/* fall through */
	case -1:
		if (!silent) {
			const char *is_cmake = FUNC7("IDF_CMAKE");
			const char *build_msg;
			if (is_cmake && is_cmake[0] == 'y')
				build_msg = FUNC0("Ready to use CMake (or 'idf.py build') to build the project.");
			else
				build_msg = FUNC0("Execute 'make' to start the build or try 'make help'.");
			FUNC8(FUNC0("\n\n"
					 "*** End of the configuration.\n"
					 "*** %s\n\n"), build_msg);
		}
		res = 0;
		break;
	default:
		if (!silent)
			FUNC6(stderr, "%s", FUNC0("\n\n"
					  "Your configuration changes were NOT saved."
					  "\n\n"));
		if (res != KEY_ESC)
			res = 0;
	}

	return res;
}