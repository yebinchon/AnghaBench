#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int comment_count; int /*<<< orphan*/ * comment_refs; } ;
struct TYPE_5__ {char* name; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ MXFTaggedValue ;
typedef  TYPE_2__ MXFPackage ;
typedef  int /*<<< orphan*/  MXFContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_DICT_DONT_STRDUP_KEY ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  TaggedValue ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(MXFContext *mxf, AVDictionary **pm, MXFPackage *package)
{
    MXFTaggedValue *tag;
    int size, i;
    char *key = NULL;

    for (i = 0; i < package->comment_count; i++) {
        tag = FUNC3(mxf, &package->comment_refs[i], TaggedValue);
        if (!tag || !tag->name || !tag->value)
            continue;

        size = FUNC5(tag->name) + 8 + 1;
        key = FUNC2(size);
        if (!key)
            return FUNC0(ENOMEM);

        FUNC4(key, size, "comment_%s", tag->name);
        FUNC1(pm, key, tag->value, AV_DICT_DONT_STRDUP_KEY);
    }
    return 0;
}