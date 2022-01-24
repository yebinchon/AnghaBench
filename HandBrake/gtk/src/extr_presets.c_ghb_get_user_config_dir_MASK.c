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
typedef  size_t gint ;
typedef  char const gchar ;

/* Variables and functions */
 int /*<<< orphan*/  G_DIR_SEPARATOR_S ; 
 int /*<<< orphan*/  G_FILE_TEST_IS_DIR ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 () ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*,int) ; 
 char* FUNC5 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const**) ; 
 char** FUNC7 (char const*,int /*<<< orphan*/ ,int) ; 
 char* override_user_config_dir ; 

gchar *
FUNC8(gchar *subdir)
{
    const gchar * dir, * ghb = "ghb";
    gchar       * config;

    if (override_user_config_dir != NULL)
    {
        dir = override_user_config_dir;
    }
    else
    {
        dir = FUNC3();
    }
    if (dir == NULL || !FUNC0(dir, G_FILE_TEST_IS_DIR))
    {
        dir = FUNC2();
        ghb = ".ghb";
    }
    if (dir == NULL || !FUNC0(dir, G_FILE_TEST_IS_DIR))
    {
        // Last ditch, use CWD
        dir = "./";
        ghb = ".ghb";
    }
    config = FUNC5("%s/%s", dir, ghb);
    if (!FUNC0(config, G_FILE_TEST_IS_DIR))
        FUNC4 (config, 0755);
    if (subdir)
    {
        gchar **split;
        gint    ii;

        split = FUNC7(subdir, G_DIR_SEPARATOR_S, -1);
        for (ii = 0; split[ii] != NULL; ii++)
        {
            gchar *tmp;

            tmp = FUNC5 ("%s/%s", config, split[ii]);
            FUNC1(config);
            config = tmp;
            if (!FUNC0(config, G_FILE_TEST_IS_DIR))
                FUNC4 (config, 0755);
        }
        FUNC6(split);
    }
    return config;
}