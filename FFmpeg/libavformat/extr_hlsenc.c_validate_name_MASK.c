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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static int FUNC7(int nb_vs, const char *fn)
{
    const char *filename, *subdir_name;
    char *fn_dup = NULL;
    int ret = 0;

    if (!fn) {
        ret = FUNC0(EINVAL);
        goto fail;
    }

    fn_dup = FUNC5(fn);
    filename = FUNC1(fn);
    subdir_name = FUNC2(fn_dup);

    if (nb_vs > 1 && !FUNC6(filename, "%v") && !FUNC6(subdir_name, "%v")) {
        FUNC4(NULL, AV_LOG_ERROR, "More than 1 variant streams are present, %%v is expected "
               "either in the filename or in the sub-directory name of file %s\n", fn);
        ret = FUNC0(EINVAL);
        goto fail;
    }

    if (FUNC6(filename, "%v") && FUNC6(subdir_name, "%v")) {
        FUNC4(NULL, AV_LOG_ERROR, "%%v is expected either in the filename or "
               "in the sub-directory name of file %s, but only in one of them\n", fn);
        ret = FUNC0(EINVAL);
        goto fail;
    }

fail:
    FUNC3(&fn_dup);
    return ret;
}