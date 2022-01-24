#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_18__ {TYPE_5__** streams; TYPE_4__* priv_data; } ;
struct TYPE_17__ {int /*<<< orphan*/  time_base; TYPE_1__* codecpar; TYPE_2__* priv_data; } ;
struct TYPE_16__ {scalar_t__ pref_size; scalar_t__ pref_duration; } ;
struct TYPE_15__ {int granule; scalar_t__ size; int segments_count; int flags; int* segments; scalar_t__ data; size_t stream_index; scalar_t__ start_granule; } ;
struct TYPE_14__ {scalar_t__ last_granule; TYPE_3__ page; } ;
struct TYPE_13__ {scalar_t__ codec_id; } ;
typedef  TYPE_2__ OGGStreamContext ;
typedef  TYPE_3__ OGGPage ;
typedef  TYPE_4__ OGGContext ;
typedef  TYPE_5__ AVStream ;
typedef  TYPE_6__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_THEORA ; 
 scalar_t__ AV_CODEC_ID_VP8 ; 
 int /*<<< orphan*/  AV_TIME_BASE_Q ; 
 int FUNC0 (unsigned int,int) ; 
 unsigned int MAX_PAGE_SIZE ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s, AVStream *st,
                           uint8_t *data, unsigned size, int64_t granule,
                           int header)
{
    OGGStreamContext *oggstream = st->priv_data;
    OGGContext *ogg = s->priv_data;
    int total_segments = size / 255 + 1;
    uint8_t *p = data;
    int i, segments, len, flush = 0;

    // Handles VFR by flushing page because this frame needs to have a timestamp
    // For theora and VP8, keyframes also need to have a timestamp to correctly mark
    // them as such, otherwise seeking will not work correctly at the very
    // least with old libogg versions.
    // Do not try to flush header packets though, that will create broken files.
    if ((st->codecpar->codec_id == AV_CODEC_ID_THEORA || st->codecpar->codec_id == AV_CODEC_ID_VP8) && !header &&
        (FUNC5(oggstream, granule) >
         FUNC5(oggstream, oggstream->last_granule) + 1 ||
         FUNC6(oggstream, granule))) {
        if (oggstream->page.granule != -1)
            FUNC4(s, oggstream);
        flush = 1;
    }

    // avoid a continued page
    if (!header && oggstream->page.size > 0 &&
        MAX_PAGE_SIZE - oggstream->page.size < size) {
        FUNC4(s, oggstream);
    }

    for (i = 0; i < total_segments; ) {
        OGGPage *page = &oggstream->page;

        segments = FUNC0(total_segments - i, 255 - page->segments_count);

        if (i && !page->segments_count)
            page->flags |= 1; // continued packet

        FUNC3(page->segments+page->segments_count, 255, segments - 1);
        page->segments_count += segments - 1;

        len = FUNC0(size, segments*255);
        page->segments[page->segments_count++] = len - (segments-1)*255;
        FUNC2(page->data+page->size, p, len);
        p += len;
        size -= len;
        i += segments;
        page->size += len;

        if (i == total_segments)
            page->granule = granule;

        {
            AVStream *st = s->streams[page->stream_index];

            int64_t start = FUNC1(page->start_granule, st->time_base,
                                         AV_TIME_BASE_Q);
            int64_t next  = FUNC1(FUNC5(oggstream, page->granule),
                                         st->time_base, AV_TIME_BASE_Q);

            if (page->segments_count == 255) {
                FUNC4(s, oggstream);
            } else if (!header) {
                if ((ogg->pref_size     > 0 && page->size   >= ogg->pref_size) ||
                    (ogg->pref_duration > 0 && next - start >= ogg->pref_duration)) {
                    FUNC4(s, oggstream);
                }
            }
        }
    }

    if (flush && oggstream->page.granule != -1)
        FUNC4(s, oggstream);

    return 0;
}