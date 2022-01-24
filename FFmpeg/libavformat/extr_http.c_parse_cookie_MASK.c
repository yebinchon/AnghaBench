#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tm {int /*<<< orphan*/  member_0; } ;
struct TYPE_3__ {char* key; scalar_t__ value; } ;
typedef  int /*<<< orphan*/  HTTPContext ;
typedef  TYPE_1__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_DICT_DONT_STRDUP_KEY ; 
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 char* FUNC5 (char const*,int) ; 
 int FUNC6 (struct tm*) ; 
 scalar_t__ FUNC7 (char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,struct tm*) ; 
 char* FUNC9 (char const*,char) ; 

__attribute__((used)) static int FUNC10(HTTPContext *s, const char *p, AVDictionary **cookies)
{
    AVDictionary *new_params = NULL;
    AVDictionaryEntry *e, *cookie_entry;
    char *eql, *name;

    // ensure the cookie is parsable
    if (FUNC7(p, &new_params))
        return -1;

    // if there is no cookie value there is nothing to parse
    cookie_entry = FUNC2(new_params, "", NULL, AV_DICT_IGNORE_SUFFIX);
    if (!cookie_entry || !cookie_entry->value) {
        FUNC1(&new_params);
        return -1;
    }

    // ensure the cookie is not expired or older than an existing value
    if ((e = FUNC2(new_params, "expires", NULL, 0)) && e->value) {
        struct tm new_tm = {0};
        if (!FUNC8(e->value, &new_tm)) {
            AVDictionaryEntry *e2;

            // if the cookie has already expired ignore it
            if (FUNC6(&new_tm) < FUNC4() / 1000000) {
                FUNC1(&new_params);
                return 0;
            }

            // only replace an older cookie with the same name
            e2 = FUNC2(*cookies, cookie_entry->key, NULL, 0);
            if (e2 && e2->value) {
                AVDictionary *old_params = NULL;
                if (!FUNC7(p, &old_params)) {
                    e2 = FUNC2(old_params, "expires", NULL, 0);
                    if (e2 && e2->value) {
                        struct tm old_tm = {0};
                        if (!FUNC8(e->value, &old_tm)) {
                            if (FUNC6(&new_tm) < FUNC6(&old_tm)) {
                                FUNC1(&new_params);
                                FUNC1(&old_params);
                                return -1;
                            }
                        }
                    }
                }
                FUNC1(&old_params);
            }
        }
    }
    FUNC1(&new_params);

    // duplicate the cookie name (dict will dupe the value)
    if (!(eql = FUNC9(p, '='))) return FUNC0(EINVAL);
    if (!(name = FUNC5(p, eql - p))) return FUNC0(ENOMEM);

    // add the cookie to the dictionary
    FUNC3(cookies, name, eql, AV_DICT_DONT_STRDUP_KEY);

    return 0;
}