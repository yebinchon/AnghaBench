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
 int FUNC0 (scalar_t__) ; 
 scalar_t__ EEXIST ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOMEM ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 char* FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 char* FUNC5 (char*) ; 
 scalar_t__ errno ; 
 int FUNC6 (char const*) ; 
 int FUNC7 (char**,char*,char,int) ; 
 int FUNC8 (char**,char*,char,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 

__attribute__((used)) static int FUNC10(const char *buf, char **s, int index, const char *varname)
{
    const char *proto, *dir;
    char *orig_buf_dup = NULL, *mod_buf_dup = NULL;
    int ret = 0;

    orig_buf_dup = FUNC3(buf);
    if (!orig_buf_dup) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    if (!FUNC4(buf, "%v")) {
        *s = orig_buf_dup;
        return ret;
    }

    if (!varname) {
        if (FUNC7(s, orig_buf_dup, 'v', index) < 1) {
            ret = FUNC0(EINVAL);
            goto fail;
        }
    } else {
        if (FUNC8(s, orig_buf_dup, 'v', varname) < 1) {
            ret = FUNC0(EINVAL);
            goto fail;
        }
    }

    proto = FUNC5(orig_buf_dup);
    dir = FUNC1(orig_buf_dup);

    /* if %v is present in the file's directory, create sub-directory */
    if (FUNC4(dir, "%v") && proto && !FUNC9(proto, "file")) {
        mod_buf_dup = FUNC3(*s);
        dir = FUNC1(mod_buf_dup);
        if (FUNC6(dir) == -1 && errno != EEXIST) {
            ret = FUNC0(errno);
            goto fail;
        }
    }

fail:
    FUNC2(&orig_buf_dup);
    FUNC2(&mod_buf_dup);
    return ret;
}