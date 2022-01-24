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
typedef  int /*<<< orphan*/  chassis_options_t ;
typedef  int /*<<< orphan*/  GOptionEntry ;
typedef  int /*<<< orphan*/  GOptionContext ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,char**) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int*,char***,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC9(GOptionContext *option_ctx,
		int *argc_p, char ***argv_p,
		int *print_version,
		char **config_file,
		GError **gerr) {
	chassis_options_t *opts;
	GOptionEntry *base_main_entries;
	int ret = 0;

	opts = FUNC1();
	FUNC2(opts, print_version, config_file);
	base_main_entries = FUNC3(opts);

	FUNC5(option_ctx, base_main_entries, NULL);
	FUNC7(option_ctx, FALSE);
	FUNC8(option_ctx, TRUE);

	if (FALSE == FUNC6(option_ctx, argc_p, argv_p, gerr)) {
		ret = -1;
	}

	/* do not use chassis_options_free_g_options... here, we need to hang on to the data until the end of the program! */
	FUNC4(base_main_entries);
	FUNC0(opts);

	return ret;
}