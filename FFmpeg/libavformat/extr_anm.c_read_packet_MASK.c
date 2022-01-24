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
struct TYPE_12__ {int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_11__ {int size; int /*<<< orphan*/  flags; } ;
struct TYPE_10__ {int page; int record; int page_table_offset; TYPE_1__* pt; } ;
struct TYPE_9__ {int nb_records; scalar_t__ base_record; } ;
typedef  TYPE_1__ Page ;
typedef  TYPE_2__ AnmDemuxContext ;
typedef  TYPE_3__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  EIO ; 
 int MAX_PAGES ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s,
                       AVPacket *pkt)
{
    AnmDemuxContext *anm = s->priv_data;
    AVIOContext *pb = s->pb;
    Page *p;
    int tmp, record_size;

    if (FUNC2(s->pb))
        return FUNC0(EIO);

    if (anm->page < 0)
        return anm->page;

repeat:
    p = &anm->pt[anm->page];

    /* parse page header */
    if (anm->record < 0) {
        FUNC4(pb, anm->page_table_offset + MAX_PAGES*6 + (anm->page<<16), SEEK_SET);
        FUNC5(pb, 8 + 2*p->nb_records);
        anm->record = 0;
    }

    /* if we have fetched all records in this page, then find the
       next page and repeat */
    if (anm->record >= p->nb_records) {
        anm->page = FUNC7(anm, p->base_record + p->nb_records);
        if (anm->page < 0)
            return anm->page;
        anm->record = -1;
        goto repeat;
    }

    /* fetch record size */
    tmp = FUNC6(pb);
    FUNC4(pb, anm->page_table_offset + MAX_PAGES*6 + (anm->page<<16) +
              8 + anm->record * 2, SEEK_SET);
    record_size = FUNC3(pb);
    FUNC4(pb, tmp, SEEK_SET);

    /* fetch record */
    pkt->size = FUNC1(s->pb, pkt, record_size);
    if (pkt->size < 0)
        return pkt->size;
    if (p->base_record + anm->record == 0)
        pkt->flags |= AV_PKT_FLAG_KEY;

    anm->record++;
    return 0;
}