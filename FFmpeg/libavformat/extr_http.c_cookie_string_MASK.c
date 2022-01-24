#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVDictionary *dict, char **cookies)
{
    AVDictionaryEntry *e = NULL;
    int len = 1;

    // determine how much memory is needed for the cookies string
    while ((e = FUNC1(dict, "", e, AV_DICT_IGNORE_SUFFIX)))
        len += FUNC5(e->key) + FUNC5(e->value) + 1;

    // reallocate the cookies
    e = NULL;
    if (*cookies) FUNC2(*cookies);
    *cookies = FUNC3(len);
    if (!*cookies) return FUNC0(ENOMEM);
    *cookies[0] = '\0';

    // write out the cookies
    while ((e = FUNC1(dict, "", e, AV_DICT_IGNORE_SUFFIX)))
        FUNC4(*cookies, len, "%s%s\n", e->key, e->value);

    return 0;
}