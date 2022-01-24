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
typedef  scalar_t__ time_t ;
struct stat {scalar_t__ st_atime; scalar_t__ st_mtime; } ;
typedef  int /*<<< orphan*/  path_stat ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  MZ_INTERNAL_ERROR ; 
 int /*<<< orphan*/  MZ_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct stat*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 size_t FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,size_t) ; 

int32_t FUNC8(const char *path, time_t *modified_date, time_t *accessed_date, time_t *creation_date)
{
    struct stat path_stat;
    char *name = NULL;
    size_t len = 0;
    int32_t err = MZ_INTERNAL_ERROR;

    FUNC2(&path_stat, 0, sizeof(path_stat));

    if (FUNC5(path, "-") != 0)
    {
        /* Not all systems allow stat'ing a file with / appended */
        len = FUNC6(path);
        name = (char *)FUNC1(len + 1);
        FUNC7(name, path, len + 1);
        FUNC3(name);

        if (FUNC4(name, &path_stat) == 0)
        {
            if (modified_date != NULL)
                *modified_date = path_stat.st_mtime;
            if (accessed_date != NULL)
                *accessed_date = path_stat.st_atime;
            /* Creation date not supported */
            if (creation_date != NULL)
                *creation_date = 0;

            err = MZ_OK;
        }

        FUNC0(name);
    }

    return err;
}