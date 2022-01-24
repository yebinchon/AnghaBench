#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_33__ {int /*<<< orphan*/  value; } ;
struct TYPE_32__ {int url; int nb_streams; int /*<<< orphan*/  pb; TYPE_2__** streams; int /*<<< orphan*/  metadata; TYPE_4__* priv_data; } ;
struct TYPE_31__ {int start; } ;
struct TYPE_29__ {int end_time; int start_time; struct TYPE_29__* next; struct TYPE_29__* filename; } ;
struct TYPE_30__ {scalar_t__ list_size; scalar_t__ list_type; scalar_t__ segment_count; TYPE_3__ cur_entry; scalar_t__ increment_tc; TYPE_6__* avf; int /*<<< orphan*/  list_pb; scalar_t__ list; int /*<<< orphan*/  temp_list_filename; scalar_t__ use_rename; TYPE_3__* segment_list_entries; TYPE_3__* segment_list_entries_end; } ;
struct TYPE_28__ {int /*<<< orphan*/  metadata; int /*<<< orphan*/  avg_frame_rate; TYPE_1__* codecpar; } ;
struct TYPE_27__ {scalar_t__ codec_type; } ;
typedef  TYPE_3__ SegmentListEntry ;
typedef  TYPE_4__ SegmentContext ;
typedef  TYPE_5__ AVTimecode ;
typedef  int /*<<< orphan*/  AVRational ;
typedef  TYPE_6__ AVFormatContext ;
typedef  TYPE_7__ AVDictionaryEntry ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int AV_TIMECODE_STR_SIZE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ LIST_TYPE_M3U8 ; 
 TYPE_7__* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_3__* FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,TYPE_3__*,int) ; 
 int FUNC17 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__,TYPE_3__*,TYPE_6__*) ; 

__attribute__((used)) static int FUNC19(AVFormatContext *s, int write_trailer, int is_last)
{
    SegmentContext *seg = s->priv_data;
    AVFormatContext *oc = seg->avf;
    int ret = 0;
    AVTimecode tc;
    AVRational rate;
    AVDictionaryEntry *tcr;
    char buf[AV_TIMECODE_STR_SIZE];
    int i;
    int err;

    if (!oc || !oc->pb)
        return FUNC0(EINVAL);

    FUNC10(oc, NULL); /* Flush any buffered data (fragmented mp4) */
    if (write_trailer)
        ret = FUNC11(oc);

    if (ret < 0)
        FUNC4(s, AV_LOG_ERROR, "Failure occurred when ending segment '%s'\n",
               oc->url);

    if (seg->list) {
        if (seg->list_size || seg->list_type == LIST_TYPE_M3U8) {
            SegmentListEntry *entry = FUNC5(sizeof(*entry));
            if (!entry) {
                ret = FUNC0(ENOMEM);
                goto end;
            }

            /* append new element */
            FUNC16(entry, &seg->cur_entry, sizeof(*entry));
            entry->filename = FUNC7(entry->filename);
            if (!seg->segment_list_entries)
                seg->segment_list_entries = seg->segment_list_entries_end = entry;
            else
                seg->segment_list_entries_end->next = entry;
            seg->segment_list_entries_end = entry;

            /* drop first item */
            if (seg->list_size && seg->segment_count >= seg->list_size) {
                entry = seg->segment_list_entries;
                seg->segment_list_entries = seg->segment_list_entries->next;
                FUNC3(&entry->filename);
                FUNC3(&entry);
            }

            if ((ret = FUNC17(s)) < 0)
                goto end;
            for (entry = seg->segment_list_entries; entry; entry = entry->next)
                FUNC18(seg->list_pb, seg->list_type, entry, s);
            if (seg->list_type == LIST_TYPE_M3U8 && is_last)
                FUNC13(seg->list_pb, "#EXT-X-ENDLIST\n");
            FUNC14(s, &seg->list_pb);
            if (seg->use_rename)
                FUNC15(seg->temp_list_filename, seg->list, s);
        } else {
            FUNC18(seg->list_pb, seg->list_type, &seg->cur_entry, s);
            FUNC12(seg->list_pb);
        }
    }

    FUNC4(s, AV_LOG_VERBOSE, "segment:'%s' count:%d ended\n",
           seg->avf->url, seg->segment_count);
    seg->segment_count++;

    if (seg->increment_tc) {
        tcr = FUNC1(s->metadata, "timecode", NULL, 0);
        if (tcr) {
            /* search the first video stream */
            for (i = 0; i < s->nb_streams; i++) {
                if (s->streams[i]->codecpar->codec_type == AVMEDIA_TYPE_VIDEO) {
                    rate = s->streams[i]->avg_frame_rate;/* Get fps from the video stream */
                    err = FUNC8(&tc, rate, tcr->value, s);
                    if (err < 0) {
                        FUNC4(s, AV_LOG_WARNING, "Could not increment global timecode, error occurred during timecode creation.\n");
                        break;
                    }
                    tc.start += (int)((seg->cur_entry.end_time - seg->cur_entry.start_time) * FUNC6(rate));/* increment timecode */
                    FUNC2(&s->metadata, "timecode",
                                FUNC9(&tc, buf, 0), 0);
                    break;
                }
            }
        } else {
            FUNC4(s, AV_LOG_WARNING, "Could not increment global timecode, no global timecode metadata found.\n");
        }
        for (i = 0; i < s->nb_streams; i++) {
            if (s->streams[i]->codecpar->codec_type == AVMEDIA_TYPE_VIDEO) {
                char st_buf[AV_TIMECODE_STR_SIZE];
                AVTimecode st_tc;
                AVRational st_rate = s->streams[i]->avg_frame_rate;
                AVDictionaryEntry *st_tcr = FUNC1(s->streams[i]->metadata, "timecode", NULL, 0);
                if (st_tcr) {
                    if ((FUNC8(&st_tc, st_rate, st_tcr->value, s) < 0)) {
                        FUNC4(s, AV_LOG_WARNING, "Could not increment stream %d timecode, error occurred during timecode creation.\n", i);
                        continue;
                    }
                st_tc.start += (int)((seg->cur_entry.end_time - seg->cur_entry.start_time) * FUNC6(st_rate));    // increment timecode
                FUNC2(&s->streams[i]->metadata, "timecode", FUNC9(&st_tc, st_buf, 0), 0);
                }
            }
        }
    }

end:
    FUNC14(oc, &oc->pb);

    return ret;
}