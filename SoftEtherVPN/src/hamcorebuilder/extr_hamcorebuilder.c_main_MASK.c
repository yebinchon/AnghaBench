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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,char**) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

int FUNC7(int argc, char *argv[])
{
	FUNC5();

#if defined(_DEBUG) || defined(DEBUG)	// In VC++ compilers, the macro is "_DEBUG", not "DEBUG".
	// If set memcheck = true, the program will be vitally slow since it will log all malloc() / realloc() / free() calls to find the cause of memory leak.
	// For normal debug we set memcheck = false.
	// Please set memcheck = true if you want to test the cause of memory leaks.
	InitMayaqua(false, true, argc, argv);
#else
	FUNC4(false, false, argc, argv);
#endif
	FUNC3();

	FUNC6("hamcore.se2 Build Utility\n");
	FUNC6("Copyright (c) SoftEther VPN Project. All Rights Reserved.\n\n");

	if (argc < 3)
	{
		FUNC6("Usage: hamcorebuilder <src_dir> <dest_hamcore_filename>\n\n");
	}
	else
	{
		char *src_dir = argv[1];
		char *dst_filename = argv[2];

		FUNC6("Src Dir: '%s'\n", src_dir);
		FUNC6("Dest Filename: '%s'\n", dst_filename);

		FUNC6("\nProcessing...\n");

#ifdef	WIN32
		BuildHamcore(dst_filename, src_dir, false);
#else
		FUNC0(dst_filename, src_dir, true);
#endif

		FUNC6("\nDone.\n");
	}

	FUNC1();
	FUNC2();

	return 0;
}