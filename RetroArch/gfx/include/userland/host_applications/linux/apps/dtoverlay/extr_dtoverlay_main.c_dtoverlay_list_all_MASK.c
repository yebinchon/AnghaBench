#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct dirent {char const* d_name; } ;
struct TYPE_12__ {int count; TYPE_1__** namelist; } ;
struct TYPE_11__ {char** strings; int num_strings; } ;
struct TYPE_10__ {char const* d_name; } ;
typedef  TYPE_2__ STRING_VEC_T ;
typedef  TYPE_3__ STATE_T ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  overlay_src_dir ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct dirent* FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*,char) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 char* FUNC8 (TYPE_2__*,char const*,int) ; 
 int FUNC9 (TYPE_2__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int FUNC13 (char const*) ; 

__attribute__((used)) static int FUNC14(STATE_T *state)
{
    int i;
    DIR *dh;
    struct dirent *de;
    STRING_VEC_T strings;

    FUNC10(&strings);

    /* Enumerate .dtbo files in the /boot/overlays directory */
    dh = FUNC3(overlay_src_dir);
    while ((de = FUNC5(dh)) != NULL)
    {
	int len = FUNC13(de->d_name) - 5;
	if ((len >= 0) && FUNC7(de->d_name + len, ".dtbo") == 0)
        {
	    char *str = FUNC8(&strings, de->d_name, len + 2);
            str[len] = '\0';
            str[len + 1] = ' ';
        }
    }
    FUNC0(dh);

    /* Merge in active overlays, marking them */
    for (i = 0; i < state->count; i++)
    {
	const char *left, *right;
	char *str;
	int len, idx;

	left = FUNC6(state->namelist[i]->d_name, '_');
	if (!left)
	    return FUNC1("Internal error");
	left++;
	right = FUNC6(left, '.');
	if (!right)
	    return FUNC1("Internal error");

        len = right - left;
        if ((len == 7) && (FUNC2(left, "dtparam", 7) == 0))
            continue;
	idx = FUNC9(&strings, left, len);
	if (idx >= 0)
	{
	    str = strings.strings[idx];
            len = FUNC13(str);
	}
	else
        {
	    str = FUNC8(&strings, left, len + 2);
            str[len] = '\0';
        }
	str[len + 1] = '*';
    }

    if (strings.num_strings == 0)
    {
	FUNC4("No overlays found\n");
    }
    else
    {
	/* Sort */
	FUNC11(&strings);

	/* Display */
	FUNC4("All overlays (* = loaded):\n");

	for (i = 0; i < strings.num_strings; i++)
	{
            const char *str = strings.strings[i];
	    FUNC4("%c %s\n", str[FUNC13(str)+1], str);
	}
    }

    FUNC12(&strings);

    return 0;
}