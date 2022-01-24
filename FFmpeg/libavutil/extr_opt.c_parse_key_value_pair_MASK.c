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
 int AVERROR_OPTION_NOT_FOUND ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_OPT_SEARCH_CHILDREN ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 char* FUNC3 (char const**,char const*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC5 (void*,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 

__attribute__((used)) static int FUNC7(void *ctx, const char **buf,
                                const char *key_val_sep, const char *pairs_sep)
{
    char *key = FUNC3(buf, key_val_sep);
    char *val;
    int ret;

    if (!key)
        return FUNC0(ENOMEM);

    if (*key && FUNC6(*buf, key_val_sep)) {
        (*buf)++;
        val = FUNC3(buf, pairs_sep);
        if (!val) {
            FUNC2(&key);
            return FUNC0(ENOMEM);
        }
    } else {
        FUNC4(ctx, AV_LOG_ERROR, "Missing key or no key/value separator found after key '%s'\n", key);
        FUNC1(key);
        return FUNC0(EINVAL);
    }

    FUNC4(ctx, AV_LOG_DEBUG, "Setting entry with key '%s' to value '%s'\n", key, val);

    ret = FUNC5(ctx, key, val, AV_OPT_SEARCH_CHILDREN);
    if (ret == AVERROR_OPTION_NOT_FOUND)
        FUNC4(ctx, AV_LOG_ERROR, "Key '%s' not found.\n", key);

    FUNC1(key);
    FUNC1(val);
    return ret;
}