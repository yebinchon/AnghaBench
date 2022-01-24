#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  root ;
typedef  scalar_t__ int64_t ;
struct TYPE_11__ {int nb_index_entries; TYPE_3__* index_entries; int /*<<< orphan*/  index_entries_allocated_size; void* pb; int /*<<< orphan*/  last_valid_pts; int /*<<< orphan*/  pts; int /*<<< orphan*/  epoch; } ;
typedef  TYPE_1__ WtvContext ;
struct TYPE_14__ {void* pb; TYPE_2__** streams; scalar_t__ nb_streams; int /*<<< orphan*/  ctx_flags; TYPE_1__* priv_data; } ;
struct TYPE_13__ {scalar_t__ size; int /*<<< orphan*/  timestamp; scalar_t__ pos; } ;
struct TYPE_12__ {int /*<<< orphan*/  duration; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVIndexEntry ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVFMTCTX_NOHEADER ; 
 int /*<<< orphan*/  AVINDEX_KEYFRAME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  SEEK_TO_DATA ; 
 int WTV_SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (void*,int /*<<< orphan*/ *,int) ; 
 void* FUNC3 (void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int) ; 
 scalar_t__ FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__**,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ff_table_0_entries_legacy_attrib_le16 ; 
 int /*<<< orphan*/  ff_table_0_entries_time_le16 ; 
 int /*<<< orphan*/  ff_timeline_le16 ; 
 int /*<<< orphan*/  ff_timeline_table_0_entries_Events_le16 ; 
 scalar_t__ FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (void*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 void* FUNC13 (TYPE_4__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(AVFormatContext *s)
{
    WtvContext *wtv = s->priv_data;
    unsigned root_sector;
    int root_size;
    uint8_t root[WTV_SECTOR_SIZE];
    AVIOContext *pb;
    int64_t timeline_pos;
    int64_t ret;

    wtv->epoch          =
    wtv->pts            =
    wtv->last_valid_pts = AV_NOPTS_VALUE;

    /* read root directory sector */
    FUNC6(s->pb, 0x30);
    root_size = FUNC3(s->pb);
    if (root_size > sizeof(root)) {
        FUNC0(s, AV_LOG_ERROR, "root directory size exceeds sector size\n");
        return AVERROR_INVALIDDATA;
    }
    FUNC6(s->pb, 4);
    root_sector = FUNC3(s->pb);

    ret = FUNC11(s->pb, root_sector, 0);
    if (ret < 0)
        return ret;
    root_size = FUNC2(s->pb, root, root_size);
    if (root_size < 0)
        return AVERROR_INVALIDDATA;

    /* parse chunks up until first data chunk */
    wtv->pb = FUNC13(s, root, root_size, ff_timeline_le16);
    if (!wtv->pb) {
        FUNC0(s, AV_LOG_ERROR, "timeline data missing\n");
        return AVERROR_INVALIDDATA;
    }

    ret = FUNC9(s, SEEK_TO_DATA, 0, 0);
    if (ret < 0)
        return ret;
    FUNC5(wtv->pb, -32, SEEK_CUR);

    timeline_pos = FUNC7(s->pb); // save before opening another file

    /* read metadata */
    pb = FUNC13(s, root, root_size, ff_table_0_entries_legacy_attrib_le16);
    if (pb) {
        FUNC10(s, pb);
        FUNC12(pb);
    }

    s->ctx_flags |= AVFMTCTX_NOHEADER; // Needed for noStreams.wtv

    /* read seek index */
    if (s->nb_streams) {
        AVStream *st = s->streams[0];
        pb = FUNC13(s, root, root_size, ff_table_0_entries_time_le16);
        if (pb) {
            while(1) {
                uint64_t timestamp = FUNC4(pb);
                uint64_t frame_nb  = FUNC4(pb);
                if (FUNC1(pb))
                    break;
                FUNC8(&wtv->index_entries, &wtv->nb_index_entries, &wtv->index_entries_allocated_size,
                                   0, timestamp, frame_nb, 0, AVINDEX_KEYFRAME);
            }
            FUNC12(pb);

            if (wtv->nb_index_entries) {
                pb = FUNC13(s, root, root_size, ff_timeline_table_0_entries_Events_le16);
                if (pb) {
                    AVIndexEntry *e = wtv->index_entries;
                    AVIndexEntry *e_end = wtv->index_entries + wtv->nb_index_entries - 1;
                    uint64_t last_position = 0;
                    while (1) {
                        uint64_t frame_nb = FUNC4(pb);
                        uint64_t position = FUNC4(pb);
                        while (e <= e_end && frame_nb > e->size) {
                            e->pos = last_position;
                            e++;
                        }
                        if (FUNC1(pb))
                            break;
                        last_position = position;
                    }
                    e_end->pos = last_position;
                    FUNC12(pb);
                    st->duration = e_end->timestamp;
                }
            }
        }
    }

    FUNC5(s->pb, timeline_pos, SEEK_SET);
    return 0;
}