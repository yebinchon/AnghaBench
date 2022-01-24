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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int,char**,char**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,char const*) ; 

int FUNC11(const char *fname, const char *section)
{
	char line[128], *var, *val;
	int keys_encountered = 0;
	FILE *f;
	int ret;

	f = FUNC4(fname, "r");
	if (f == NULL) return -1;

	if (section != NULL)
	{
		/* for game_def.cfg only */
		ret = FUNC10(f, section);
		if (!ret) {
			FUNC6("config_readsect: %s: missing section [%s]\n", fname, section);
			FUNC2(f);
			return -1;
		}
	}

	FUNC1();

	while (!FUNC3(f))
	{
		ret = FUNC0(f, line, sizeof(line), &var, &val);
		if (ret ==  0) break;
		if (ret == -1) continue;

		FUNC7(var, val, &keys_encountered);
	}

	if (keys_encountered) {
		FUNC9(f);
		FUNC5(f);
	}

	FUNC2(f);

	FUNC6("config_readsect: loaded from %s", fname);
	if (section != NULL)
		FUNC6(" [%s]", section);
	FUNC8("\n");

	return 0;
}