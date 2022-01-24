#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int count; TYPE_1__** namelist; } ;
struct TYPE_5__ {char* d_name; } ;
typedef  TYPE_2__ STATE_T ;
typedef  int /*<<< orphan*/  DTBLOB_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dt_overlays_dir ; 
 int FUNC2 (TYPE_2__*,char*,int,char const**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const**) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 char** FUNC10 (int) ; 
 scalar_t__ FUNC11 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*) ; 
 scalar_t__ FUNC13 (char const*) ; 
 void* FUNC14 (char*,...) ; 
 char* FUNC15 (char const*,char) ; 
 int FUNC16 (char*,char*) ; 
 int FUNC17 (char const*) ; 
 char* FUNC18 (char const*,char) ; 
 int FUNC19 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC20 (char const*) ; 
 int /*<<< orphan*/  work_dir ; 

__attribute__((used)) static int FUNC21(STATE_T *state, const char *overlay, int and_later)
{
    const char *overlay_dir;
    const char *dir_name = NULL;
    char *end;
    int overlay_len;
    int count = state->count;
    int rmpos;
    int i;

    if (FUNC1(work_dir) != 0)
	FUNC7("Failed to chdir to '%s'", work_dir);

    if (overlay)
    {
	overlay_len = FUNC17(overlay);

	rmpos = FUNC19(overlay, &end, 10);
	if (end && (*end == '\0'))
	{
	    if (rmpos >= count)
		return FUNC6("Overlay index (%d) too large", rmpos);
	    dir_name = state->namelist[rmpos]->d_name;
	}
	/* Locate the most recent reference to the overlay */
	else for (rmpos = count - 1; rmpos >= 0; rmpos--)
	{
	    const char *left, *right;
	    dir_name = state->namelist[rmpos]->d_name;
	    left = FUNC15(dir_name, '_');
	    if (!left)
		return FUNC6("Internal error");
	    left++;
	    right = FUNC15(left, '.');
	    if (!right)
		return FUNC6("Internal error");
	    if (((right - left) == overlay_len) &&
		(FUNC11(overlay, left, overlay_len) == 0))
		break;
	    dir_name = NULL;
	}

	if (rmpos < 0)
	    return FUNC6("Overlay '%s' is not loaded", overlay);
    }
    else
    {
	if (!count)
	    return FUNC6("No overlays loaded");
	rmpos = and_later ? 0 : (count - 1);
	dir_name = state->namelist[rmpos]->d_name;
    }

    if (rmpos < count)
    {
	/* Unload it and all subsequent overlays in reverse order */
	for (i = count - 1; i >= rmpos; i--)
	{
	    const char *left, *right;
	    left = state->namelist[i]->d_name;
	    right = FUNC18(left, '.');
	    if (!right)
		return FUNC6("Internal error");

	    overlay_dir = FUNC14("%s/%.*s", dt_overlays_dir,
				      right - left, left);
	    if (FUNC13(overlay_dir) != 0)
		return FUNC6("Failed to remove directory '%s'", overlay_dir);

	    FUNC9(overlay_dir);
	}

	/* Replay the sequence, deleting files for the specified overlay,
	   and renumbering and reloading all other overlays. */
	for (i = rmpos, state->count = rmpos; i < count; i++)
	{
	    const char *left, *right;
	    const char *filename = state->namelist[i]->d_name;

	    left = FUNC15(filename, '_');
	    if (!left)
		return FUNC6("Internal error");
	    left++;
	    right = FUNC15(left, '.');
	    if (!right)
		return FUNC6("Internal error");

            if (and_later || (i == rmpos))
            {
                /* This one is being deleted */
                FUNC20(filename);
            }
            else
            {
                /* Keep this one - renumber and reload */
                int len = right - left;
                char *new_name = FUNC14("%d_%.*s", state->count,
					     len, left);
		char *new_file = FUNC14("%s.dtbo", new_name);
		int ret = 0;

                if ((len == 7) && (FUNC11(left, "dtparam", 7) == 0))
		{
		    /* Regenerate the overlay in case multiple overlays target
                       different parts of the same property. */

		    DTBLOB_T *dtb;
		    char *params;
		    const char **paramv;
		    int paramc;
		    int j;
		    char *p;

                    /* Extract the parameters */
		    dtb = FUNC5(filename, 0);
		    FUNC20(filename);

		    if (!dtb)
		    {
			FUNC6("Failed to re-apply dtparam");
			continue;
		    }

		    params = (char *)FUNC3(dtb);
		    if (!params)
		    {
			FUNC6("Failed to re-apply dtparam");
			FUNC4(dtb);
			continue;
		    }

		    /* Count and NUL-separate the params */
		    p = params;
		    paramc = 0;
		    while (*p)
		    {
			int paramlen;
			*(p++) = '\0';
			paramlen = FUNC16(p, " ");
			paramc++;
			p += paramlen;
		    }

		    paramv = FUNC10((paramc + 1) * sizeof(const char *));
		    if (!paramv)
		    {
			FUNC6("out of memory re-applying dtparam");
			FUNC4(dtb);
			continue;
		    }

		    for (j = 0, p = params + 1; j < paramc; j++)
		    {
			paramv[j] = p;
			p += FUNC17(p) + 1;
		    }
		    paramv[j] = NULL;

		    /* Create the new overlay */
		    ret = FUNC2(state, "dtparam", paramc, paramv);
		    FUNC8(paramv);
		    FUNC4(dtb);
		}
		else
		{
		    FUNC12(filename, new_file);
		    ret = !FUNC0(new_file, new_name);
		}
		if (ret != 0)
		{
		    FUNC6("Failed to re-apply dtparam");
		    continue;
		}
		state->count++;
	    }
	}
    }

    return 0;
}