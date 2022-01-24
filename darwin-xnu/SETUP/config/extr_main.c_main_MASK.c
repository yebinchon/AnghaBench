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
 char* build_directory ; 
 int /*<<< orphan*/  conf_list ; 
 char* config_directory ; 
 int /*<<< orphan*/ * confp ; 
 int /*<<< orphan*/ * dtab ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* object_directory ; 
 scalar_t__ opt ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  profiling ; 
 char* source_directory ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC9 (char*) ; 
 scalar_t__ FUNC10 () ; 

int
FUNC11(int argc, char *argv[])
{

	source_directory = "..";	/* default */
	object_directory = "..";
	config_directory = (char *) 0;
	while ((argc > 1) && (argv[1][0] == '-')) {
		char		*c;

		argv++; argc--;
		for (c = &argv[0][1]; *c ; c++) {
			switch (*c) {
				case 'b':
					build_directory = argv[1];
					goto check_arg;

				case 'd':
					source_directory = argv[1];
					goto check_arg;

				case 'o':
					object_directory = argv[1];
					goto check_arg;

				case 'c':
					config_directory = argv[1];

				 check_arg:
				 	if (argv[1] == (char *) 0)
						goto usage_error;
					argv++; argc--;
					break;

				case 'p':
					profiling++;
					break;
				default:
					goto usage_error;
			}
		}
	}
	if (config_directory == (char *) 0) {
		config_directory =
			FUNC5((unsigned) FUNC9(source_directory) + 6);
		(void) FUNC8(config_directory, "%s/conf", source_directory);
	}
	if (argc != 2) {
		usage_error: ;
		FUNC1(stderr, "usage: config [ -bcdo dir ] [ -p ] sysname\n");
		FUNC0(1);
	}
	if (!build_directory)
		build_directory = argv[1];
	if (FUNC2(argv[1], "r", stdin) == NULL) {
		FUNC7(argv[1]);
		FUNC0(2);
	}
	dtab = NULL;
	confp = &conf_list;
	opt = 0;
	if (FUNC10())
		FUNC0(3);

	FUNC6();			/* ioconf.c */
	FUNC4();			/* build Makefile */
	FUNC3();			/* make a lot of .h files */

	return 0;
}