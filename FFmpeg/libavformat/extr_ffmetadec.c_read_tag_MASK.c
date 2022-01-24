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
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_DICT_DONT_STRDUP_KEY ; 
 int AV_DICT_DONT_STRDUP_VAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char const*) ; 
 char* FUNC4 (char const*,int) ; 

__attribute__((used)) static int FUNC5(const uint8_t *line, AVDictionary **m)
{
    uint8_t *key, *value;
    const uint8_t *p = line;

    /* find first not escaped '=' */
    while (1) {
        if (*p == '=')
            break;
        else if (*p == '\\')
            p++;

        if (*p++)
            continue;

        return 0;
    }

    if (!(key = FUNC4(line, p - line)))
        return FUNC0(ENOMEM);
    if (!(value = FUNC4(p + 1, FUNC3(p + 1)))) {
        FUNC2(key);
        return FUNC0(ENOMEM);
    }

    FUNC1(m, key, value, AV_DICT_DONT_STRDUP_KEY | AV_DICT_DONT_STRDUP_VAL);
    return 0;
}