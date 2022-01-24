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
 int /*<<< orphan*/  WHITESPACES ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char*,char*,char**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(const char *set_cookie, AVDictionary **dict)
{
    char *param, *next_param, *cstr, *back;

    if (!set_cookie[0])
        return 0;

    if (!(cstr = FUNC3(set_cookie)))
        return FUNC0(EINVAL);

    // strip any trailing whitespace
    back = &cstr[FUNC6(cstr)-1];
    while (FUNC5(WHITESPACES, *back)) {
        *back='\0';
        if (back == cstr)
            break;
        back--;
    }

    next_param = cstr;
    while ((param = FUNC4(next_param, ";", &next_param))) {
        char *name, *value;
        param += FUNC7(param, WHITESPACES);
        if ((name = FUNC4(param, "=", &value))) {
            if (FUNC1(dict, name, value, 0) < 0) {
                FUNC2(cstr);
                return -1;
            }
        }
    }

    FUNC2(cstr);
    return 0;
}