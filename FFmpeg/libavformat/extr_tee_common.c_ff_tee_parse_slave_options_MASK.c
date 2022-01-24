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
 int AV_DICT_DONT_STRDUP_KEY ; 
 int AV_DICT_DONT_STRDUP_VAL ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ **,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC3 (char const**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,char**) ; 
 int /*<<< orphan*/  slave_opt_close ; 
 int /*<<< orphan*/  slave_opt_delim ; 
 int /*<<< orphan*/  slave_opt_open ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ) ; 

int FUNC5(void *log, char *slave,
                               AVDictionary **options, char **filename)
{
    const char *p;
    char *key, *val;
    int ret;

    if (!FUNC4(slave, slave_opt_open)) {
        *filename = slave;
        return 0;
    }
    p = slave + 1;
    if (FUNC4(p, slave_opt_close)) {
        *filename = (char *)p + 1;
        return 0;
    }
    while (1) {
        ret = FUNC3(&p, "=", slave_opt_delim, 0, &key, &val);
        if (ret < 0) {
            FUNC2(log, AV_LOG_ERROR, "No option found near \"%s\"\n", p);
            goto fail;
        }
        ret = FUNC1(options, key, val,
                          AV_DICT_DONT_STRDUP_KEY | AV_DICT_DONT_STRDUP_VAL);
        if (ret < 0)
            goto fail;
        if (FUNC4(p, slave_opt_close))
            break;
        p++;
    }
    *filename = (char *)p + 1;
    return 0;

fail:
    FUNC0(options);
    return ret;
}