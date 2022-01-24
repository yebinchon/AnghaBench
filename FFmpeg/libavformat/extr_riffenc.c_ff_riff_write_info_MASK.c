#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_7__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
struct TYPE_6__ {int /*<<< orphan*/ * pb; int /*<<< orphan*/  metadata; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;
typedef  TYPE_2__ AVDictionaryEntry ;

/* Variables and functions */
 int /*<<< orphan*/  AV_DICT_MATCH_CASE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ff_riff_info_conv ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__** riff_tags ; 

void FUNC7(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    int i;
    int64_t list_pos;
    AVDictionaryEntry *t = NULL;

    FUNC2(&s->metadata, ff_riff_info_conv, NULL);

    /* writing empty LIST is not nice and may cause problems */
    if (!FUNC6(s))
        return;

    list_pos = FUNC4(pb, "LIST");
    FUNC5(pb, "INFO");
    for (i = 0; *riff_tags[i]; i++)
        if ((t = FUNC0(s->metadata, riff_tags[i],
                             NULL, AV_DICT_MATCH_CASE)))
            FUNC3(s->pb, t->key, t->value);
    FUNC1(pb, list_pos);
}