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
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/  const*,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC2(AVDictionary **dst, const AVDictionary *src, int flags)
{
    AVDictionaryEntry *t = NULL;

    while ((t = FUNC0(src, "", t, AV_DICT_IGNORE_SUFFIX))) {
        int ret = FUNC1(dst, t->key, t->value, flags);
        if (ret < 0)
            return ret;
    }

    return 0;
}