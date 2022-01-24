#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_14__ {int start; int end; int /*<<< orphan*/  metadata; } ;
struct TYPE_13__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
struct TYPE_12__ {TYPE_2__* chapter; TYPE_1__* avf; } ;
struct TYPE_11__ {int /*<<< orphan*/  time_base; } ;
struct TYPE_10__ {TYPE_5__** chapters; } ;
typedef  TYPE_3__ NUTContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVDictionaryEntry ;
typedef  TYPE_5__ AVChapter ;

/* Variables and functions */
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,char*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(NUTContext *nut, AVIOContext *bc, int id)
{
    AVIOContext *dyn_bc;
    uint8_t *dyn_buf     = NULL;
    AVDictionaryEntry *t = NULL;
    AVChapter *ch        = nut->avf->chapters[id];
    int ret, dyn_size, count = 0;

    ret = FUNC4(&dyn_bc);
    if (ret < 0)
        return ret;

    FUNC6(bc, 0);                                        // stream_id_plus1
    FUNC7(bc, id + 1);                                      // chapter_id
    FUNC8(nut, nut->chapter[id].time_base, bc, ch->start); // chapter_start
    FUNC6(bc, ch->end - ch->start);                      // chapter_len

    while ((t = FUNC1(ch->metadata, "", t, AV_DICT_IGNORE_SUFFIX)))
        count += FUNC0(dyn_bc, t->key, t->value);

    FUNC6(bc, count);

    dyn_size = FUNC3(dyn_bc, &dyn_buf);
    FUNC5(bc, dyn_buf, dyn_size);
    FUNC2(&dyn_buf);
    return 0;
}