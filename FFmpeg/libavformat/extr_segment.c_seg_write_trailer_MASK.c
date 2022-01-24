#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct AVFormatContext {TYPE_3__* priv_data; } ;
struct TYPE_12__ {int /*<<< orphan*/  pb; } ;
struct TYPE_9__ {int /*<<< orphan*/  filename; } ;
struct TYPE_11__ {TYPE_4__* avf; TYPE_2__* segment_list_entries; TYPE_1__ cur_entry; int /*<<< orphan*/  frames; int /*<<< orphan*/  times; int /*<<< orphan*/  format_options; int /*<<< orphan*/  list_pb; scalar_t__ list; int /*<<< orphan*/  write_header_trailer; } ;
struct TYPE_10__ {int /*<<< orphan*/  filename; struct TYPE_10__* next; } ;
typedef  TYPE_2__ SegmentListEntry ;
typedef  TYPE_3__ SegmentContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct AVFormatContext*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct AVFormatContext*,int,int) ; 

__attribute__((used)) static int FUNC10(struct AVFormatContext *s)
{
    SegmentContext *seg = s->priv_data;
    AVFormatContext *oc = seg->avf;
    SegmentListEntry *cur, *next;
    int ret = 0;

    if (!oc)
        goto fail;

    if (!seg->write_header_trailer) {
        if ((ret = FUNC9(s, 0, 1)) < 0)
            goto fail;
        if ((ret = FUNC8(&oc->pb)) < 0)
            goto fail;
        ret = FUNC4(oc);
        FUNC6(&oc->pb);
    } else {
        ret = FUNC9(s, 1, 1);
    }
fail:
    if (seg->list)
        FUNC7(s, &seg->list_pb);

    FUNC0(&seg->format_options);
    FUNC3(seg);
    FUNC2(&seg->times);
    FUNC2(&seg->frames);
    FUNC2(&seg->cur_entry.filename);

    cur = seg->segment_list_entries;
    while (cur) {
        next = cur->next;
        FUNC2(&cur->filename);
        FUNC1(cur);
        cur = next;
    }

    FUNC5(oc);
    seg->avf = NULL;
    return ret;
}