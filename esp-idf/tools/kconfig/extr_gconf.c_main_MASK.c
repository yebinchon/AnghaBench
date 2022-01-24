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

/* Variables and functions */
#define  FULL_VIEW 130 
 int /*<<< orphan*/  LOCALEDIR ; 
 int /*<<< orphan*/  PACKAGE ; 
#define  SINGLE_VIEW 129 
#define  SPLIT_VIEW 128 
 int /*<<< orphan*/  SRCTREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*,char*,...) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int*,char***) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 int /*<<< orphan*/  rootmenu ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int view_mode ; 

int FUNC23(int ac, char *av[])
{
	const char *name;
	char *env;
	gchar *glade_file;

	FUNC1(PACKAGE, LOCALEDIR);
	FUNC0(PACKAGE, "UTF-8");
	FUNC22(PACKAGE);

	/* GTK stuffs */
	FUNC16();
	FUNC14(&ac, &av);
	FUNC13();

	//add_pixmap_directory (PACKAGE_DATA_DIR "/" PACKAGE "/pixmaps");
	//add_pixmap_directory (PACKAGE_SOURCE_DIR "/pixmaps");

	/* Determine GUI path */
	env = FUNC12(SRCTREE);
	if (env)
		glade_file = FUNC11(env, "/scripts/kconfig/gconf.glade", NULL);
	else if (av[0][0] == '/')
		glade_file = FUNC11(av[0], ".glade", NULL);
	else
		glade_file = FUNC11(FUNC10(), "/", av[0], ".glade", NULL);

	/* Conf stuffs */
	if (ac > 1 && av[1][0] == '-') {
		switch (av[1][1]) {
		case 'a':
			//showAll = 1;
			break;
		case 's':
			FUNC4(NULL);
			break;
		case 'h':
		case '?':
			FUNC21("%s [-s] <config>\n", av[0]);
			FUNC8(0);
		}
		name = av[2];
	} else
		name = av[1];

	FUNC2(name);
	FUNC9(&rootmenu);
	FUNC3(NULL);

	/* Load the interface and connect signals */
	FUNC18(glade_file);
	FUNC20();
	FUNC17();
	FUNC19();

	switch (view_mode) {
	case SINGLE_VIEW:
		FUNC7();
		break;
	case SPLIT_VIEW:
		FUNC5();
		break;
	case FULL_VIEW:
		FUNC6(&rootmenu);
		break;
	}

	FUNC15();

	return 0;
}