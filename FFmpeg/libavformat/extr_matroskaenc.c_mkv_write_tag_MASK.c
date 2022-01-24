#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ebml_master ;
struct TYPE_11__ {int /*<<< orphan*/  key; } ;
struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {int /*<<< orphan*/  tags_bc; } ;
typedef  TYPE_1__ MatroskaMuxContext ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *,char*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, AVDictionary *m, uint32_t elementid,
                         unsigned int uid)
{
    MatroskaMuxContext *mkv = s->priv_data;
    ebml_master tag;
    int ret;
    AVDictionaryEntry *t = NULL;

    ret = FUNC4(s, elementid, uid, &tag);
    if (ret < 0)
        return ret;

    while ((t = FUNC0(m, "", t, AV_DICT_IGNORE_SUFFIX))) {
        if (FUNC2(t->key, elementid)) {
            ret = FUNC3(mkv->tags_bc, t);
            if (ret < 0)
                return ret;
        }
    }

    FUNC1(mkv->tags_bc, tag);
    return 0;
}