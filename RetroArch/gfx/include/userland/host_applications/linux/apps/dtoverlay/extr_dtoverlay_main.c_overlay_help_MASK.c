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
typedef  int /*<<< orphan*/  OVERLAY_HELP_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  README_FILE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  overlay_src_dir ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 char* FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 int FUNC12 (char const*,char*) ; 
 int FUNC13 (char const*) ; 

__attribute__((used)) static void FUNC14(const char *overlay, const char **params)
{
    OVERLAY_HELP_STATE_T *state;
    const char *readme_path = FUNC10("%s/%s", overlay_src_dir,
					  README_FILE);

    state = FUNC7(readme_path);
    FUNC1(readme_path);

    if (state)
    {
	if (FUNC11(overlay, "dtparam") == 0)
	    overlay = "<The base DTB>";

	if (FUNC5(state, overlay))
	{
	    if (params && FUNC6(state, "Params"))
	    {
		int in_param = 0;

		while (1)
		{
		    const char *line = FUNC4(state);
		    if (!line)
			break;
		    if (line[0] == '\0')
			continue;
		    if (line[0] != ' ')
		    {
			/* This is a parameter name */
			int param_len = FUNC12(line, " ");
			const char **p = params;
			const char **q = p;
			in_param = 0;
			while (*p)
			{
			    if ((param_len == FUNC13(*p)) &&
				(FUNC2(line, *p, param_len) == 0))
				in_param = 1;
			    else
				*(q++) = *p;
			    p++;
			}
			*(q++) = 0;
		    }
		    if (in_param)
			FUNC9("%s\n", line);
		}
		/* This only shows the first unknown parameter, but
		 * that is enough. */
		if (*params)
		    FUNC0("Unknown parameter '%s'", *params);
	    }
	    else
	    {
		FUNC9("Name:   %s\n\n", overlay);
		FUNC8(state, "Info", "Info:", 8, 0);
		FUNC8(state, "Load", "Usage:", 8, 0);
		FUNC8(state, "Params", "Params:", 8, 0);
	    }
	}
	else
	{
	    FUNC0("No help found for overlay '%s'", overlay);
	}
	FUNC3(state);
    }
    else
    {
	FUNC0("Help file not found");
    }
}