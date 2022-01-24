#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tm {int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {char const* value; int /*<<< orphan*/  key; } ;
struct TYPE_7__ {int /*<<< orphan*/ * cookie_dict; int /*<<< orphan*/  cookies; } ;
typedef  TYPE_1__ HTTPContext ;
typedef  TYPE_2__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC1 (char*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC7 (char const*,char const*) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char const*,char const*,int) ; 
 char* FUNC10 (char*,char*,char**) ; 
 int FUNC11 (struct tm*) ; 
 scalar_t__ FUNC12 (TYPE_1__*,char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC13 (char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (char const*,struct tm*) ; 
 int FUNC15 (char const*) ; 

__attribute__((used)) static int FUNC16(HTTPContext *s, char **cookies, const char *path,
                       const char *domain)
{
    // cookie strings will look like Set-Cookie header field values.  Multiple
    // Set-Cookie fields will result in multiple values delimited by a newline
    int ret = 0;
    char *cookie, *set_cookies, *next;

    // destroy any cookies in the dictionary.
    FUNC2(&s->cookie_dict);

    if (!s->cookies)
        return 0;

    next = set_cookies = FUNC8(s->cookies);
    if (!next)
        return FUNC0(ENOMEM);

    *cookies = NULL;
    while ((cookie = FUNC10(next, "\n", &next)) && !ret) {
        AVDictionary *cookie_params = NULL;
        AVDictionaryEntry *cookie_entry, *e;

        // store the cookie in a dict in case it is updated in the response
        if (FUNC12(s, cookie, &s->cookie_dict))
            FUNC6(s, AV_LOG_WARNING, "Unable to parse '%s'\n", cookie);

        // continue on to the next cookie if this one cannot be parsed
        if (FUNC13(cookie, &cookie_params))
            goto skip_cookie;

        // if the cookie has no value, skip it
        cookie_entry = FUNC3(cookie_params, "", NULL, AV_DICT_IGNORE_SUFFIX);
        if (!cookie_entry || !cookie_entry->value)
            goto skip_cookie;

        // if the cookie has expired, don't add it
        if ((e = FUNC3(cookie_params, "expires", NULL, 0)) && e->value) {
            struct tm tm_buf = {0};
            if (!FUNC14(e->value, &tm_buf)) {
                if (FUNC11(&tm_buf) < FUNC5() / 1000000)
                    goto skip_cookie;
            }
        }

        // if no domain in the cookie assume it appied to this request
        if ((e = FUNC3(cookie_params, "domain", NULL, 0)) && e->value) {
            // find the offset comparison is on the min domain (b.com, not a.b.com)
            int domain_offset = FUNC15(domain) - FUNC15(e->value);
            if (domain_offset < 0)
                goto skip_cookie;

            // match the cookie domain
            if (FUNC7(&domain[domain_offset], e->value))
                goto skip_cookie;
        }

        // ensure this cookie matches the path
        e = FUNC3(cookie_params, "path", NULL, 0);
        if (!e || FUNC9(path, e->value, FUNC15(e->value)))
            goto skip_cookie;

        // cookie parameters match, so copy the value
        if (!*cookies) {
            *cookies = FUNC1("%s=%s", cookie_entry->key, cookie_entry->value);
        } else {
            char *tmp = *cookies;
            *cookies = FUNC1("%s; %s=%s", tmp, cookie_entry->key, cookie_entry->value);
            FUNC4(tmp);
        }
        if (!*cookies)
            ret = FUNC0(ENOMEM);

    skip_cookie:
        FUNC2(&cookie_params);
    }

    FUNC4(set_cookies);

    return ret;
}