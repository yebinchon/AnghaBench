#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
struct TYPE_10__ {int version; int len; } ;
typedef  TYPE_1__ ID3v2EncContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  FUNC0 (char,char,char,char) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ff_id3v2_34_metadata_conv ; 
 int /*<<< orphan*/  ff_id3v2_3_tags ; 
 int /*<<< orphan*/  ff_id3v2_4_metadata_conv ; 
 int /*<<< orphan*/  ff_id3v2_4_tags ; 
 int /*<<< orphan*/  ff_id3v2_tags ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(AVIOContext *pb, AVDictionary **metadata,
                          ID3v2EncContext *id3, int enc)
{
    AVDictionaryEntry *t = NULL;
    int ret;

    FUNC2(metadata, ff_id3v2_34_metadata_conv, NULL);
    if (id3->version == 3)
        FUNC3(metadata);
    else if (id3->version == 4)
        FUNC2(metadata, ff_id3v2_4_metadata_conv, NULL);

    while ((t = FUNC1(*metadata, "", t, AV_DICT_IGNORE_SUFFIX))) {
        if ((ret = FUNC4(id3, pb, t, ff_id3v2_tags, enc)) > 0) {
            id3->len += ret;
            continue;
        }
        if ((ret = FUNC4(id3, pb, t, id3->version == 3 ?
                                         ff_id3v2_3_tags : ff_id3v2_4_tags, enc)) > 0) {
            id3->len += ret;
            continue;
        }

        if ((ret = FUNC5(id3, pb, t->key, t->value)) > 0) {
            id3->len += ret;
            continue;
        } else if (ret < 0) {
            return ret;
        }

        /* unknown tag, write as TXXX frame */
        if ((ret = FUNC6(id3, pb, t->key, t->value, FUNC0('T', 'X', 'X', 'X'), enc)) < 0)
            return ret;
        id3->len += ret;
    }

    return 0;
}