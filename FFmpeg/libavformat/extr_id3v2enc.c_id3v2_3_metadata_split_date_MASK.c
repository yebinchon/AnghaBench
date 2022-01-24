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
typedef  int /*<<< orphan*/  year ;
typedef  int /*<<< orphan*/  day_month ;
struct TYPE_4__ {char* key; char* value; } ;
typedef  TYPE_1__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*,char const*) ; 

__attribute__((used)) static void FUNC6(AVDictionary **pm)
{
    AVDictionaryEntry *mtag = NULL;
    AVDictionary *dst = NULL;
    const char *key, *value;
    char year[5] = {0}, day_month[5] = {0};
    int i;

    while ((mtag = FUNC1(*pm, "", mtag, AV_DICT_IGNORE_SUFFIX))) {
        key = mtag->key;
        if (!FUNC3(key, "date")) {
            /* split date tag using "YYYY-MM-DD" format into year and month/day segments */
            value = mtag->value;
            i = 0;
            while (value[i] >= '0' && value[i] <= '9') i++;
            if (value[i] == '\0' || value[i] == '-') {
                FUNC4(year, value, sizeof(year));
                FUNC2(&dst, "TYER", year, 0);

                if (value[i] == '-' &&
                    value[i+1] >= '0' && value[i+1] <= '1' &&
                    value[i+2] >= '0' && value[i+2] <= '9' &&
                    value[i+3] == '-' &&
                    value[i+4] >= '0' && value[i+4] <= '3' &&
                    value[i+5] >= '0' && value[i+5] <= '9' &&
                    (value[i+6] == '\0' || value[i+6] == ' ')) {
                    FUNC5(day_month, sizeof(day_month), "%.2s%.2s", value + i + 4, value + i + 1);
                    FUNC2(&dst, "TDAT", day_month, 0);
                }
            } else
                FUNC2(&dst, key, value, 0);
        } else
            FUNC2(&dst, key, mtag->value, 0);
    }
    FUNC0(pm);
    *pm = dst;
}