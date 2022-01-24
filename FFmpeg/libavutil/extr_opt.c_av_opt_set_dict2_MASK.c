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
 int AVERROR_OPTION_NOT_FOUND ; 
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC5(void *obj, AVDictionary **options, int search_flags)
{
    AVDictionaryEntry *t = NULL;
    AVDictionary    *tmp = NULL;
    int ret = 0;

    if (!options)
        return 0;

    while ((t = FUNC1(*options, "", t, AV_DICT_IGNORE_SUFFIX))) {
        ret = FUNC4(obj, t->key, t->value, search_flags);
        if (ret == AVERROR_OPTION_NOT_FOUND)
            ret = FUNC2(&tmp, t->key, t->value, 0);
        if (ret < 0) {
            FUNC3(obj, AV_LOG_ERROR, "Error setting option %s to value %s.\n", t->key, t->value);
            FUNC0(&tmp);
            return ret;
        }
        ret = 0;
    }
    FUNC0(options);
    *options = tmp;
    return ret;
}