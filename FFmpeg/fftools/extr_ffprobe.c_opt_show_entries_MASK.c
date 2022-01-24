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
 int /*<<< orphan*/  AV_DICT_DONT_STRDUP_KEY ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const**,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,...) ; 
 int FUNC6 (char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(void *optctx, const char *opt, const char *arg)
{
    const char *p = arg;
    int ret = 0;

    while (*p) {
        AVDictionary *entries = NULL;
        char *section_name = FUNC4(&p, "=:");
        int show_all_entries = 0;

        if (!section_name) {
            FUNC5(NULL, AV_LOG_ERROR,
                   "Missing section name for option '%s'\n", opt);
            return FUNC0(EINVAL);
        }

        if (*p == '=') {
            p++;
            while (*p && *p != ':') {
                char *entry = FUNC4(&p, ",:");
                if (!entry)
                    break;
                FUNC5(NULL, AV_LOG_VERBOSE,
                       "Adding '%s' to the entries to show in section '%s'\n",
                       entry, section_name);
                FUNC2(&entries, entry, "", AV_DICT_DONT_STRDUP_KEY);
                if (*p == ',')
                    p++;
            }
        } else {
            show_all_entries = 1;
        }

        ret = FUNC6(section_name, show_all_entries, entries);
        if (ret == 0) {
            FUNC5(NULL, AV_LOG_ERROR, "No match for section '%s'\n", section_name);
            ret = FUNC0(EINVAL);
        }
        FUNC1(&entries);
        FUNC3(section_name);

        if (ret <= 0)
            break;
        if (*p)
            p++;
    }

    return ret;
}