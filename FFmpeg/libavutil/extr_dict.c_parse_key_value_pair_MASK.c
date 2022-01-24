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
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ **,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 char* FUNC3 (char const**,char const*) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 

__attribute__((used)) static int FUNC5(AVDictionary **pm, const char **buf,
                                const char *key_val_sep, const char *pairs_sep,
                                int flags)
{
    char *key = FUNC3(buf, key_val_sep);
    char *val = NULL;
    int ret;

    if (key && *key && FUNC4(*buf, key_val_sep)) {
        (*buf)++;
        val = FUNC3(buf, pairs_sep);
    }

    if (key && *key && val && *val)
        ret = FUNC1(pm, key, val, flags);
    else
        ret = FUNC0(EINVAL);

    FUNC2(&key);
    FUNC2(&val);

    return ret;
}