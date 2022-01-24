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
 unsigned int AV_OPT_FLAG_IMPLICIT_KEY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const**,char const*) ; 
 int FUNC3 (char const**,char const*,char**) ; 

int FUNC4(const char **ropts,
                         const char *key_val_sep, const char *pairs_sep,
                         unsigned flags,
                         char **rkey, char **rval)
{
    int ret;
    char *key = NULL, *val;
    const char *opts = *ropts;

    if ((ret = FUNC3(&opts, key_val_sep, &key)) < 0 &&
        !(flags & AV_OPT_FLAG_IMPLICIT_KEY))
        return FUNC0(EINVAL);
    if (!(val = FUNC2(&opts, pairs_sep))) {
        FUNC1(key);
        return FUNC0(ENOMEM);
    }
    *ropts = opts;
    *rkey  = key;
    *rval  = val;
    return 0;
}