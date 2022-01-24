#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint16_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_18__ {int nb_streams; TYPE_4__** streams; TYPE_3__* priv_data; } ;
struct TYPE_17__ {scalar_t__ pos; int size; scalar_t__ timestamp; } ;
struct TYPE_16__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  stream_index; } ;
struct TYPE_15__ {int id; int disposition; int nb_index_entries; scalar_t__ duration; int /*<<< orphan*/  time_base; TYPE_6__* index_entries; int /*<<< orphan*/  discard; TYPE_1__* codecpar; TYPE_5__ attached_pic; int /*<<< orphan*/  index; TYPE_2__* priv_data; } ;
struct TYPE_14__ {int nb_chapter_tracks; int* chapter_tracks; } ;
struct TYPE_13__ {int /*<<< orphan*/  pb; } ;
struct TYPE_12__ {scalar_t__ codec_type; int /*<<< orphan*/  codec_id; } ;
typedef  TYPE_2__ MOVStreamContext ;
typedef  TYPE_3__ MOVContext ;
typedef  TYPE_4__ AVStream ;
typedef  TYPE_5__ AVPacket ;
typedef  TYPE_6__ AVIndexEntry ;
typedef  TYPE_7__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVDISCARD_ALL ; 
 scalar_t__ AVMEDIA_TYPE_DATA ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CODEC_ID_BIN_DATA ; 
 int AV_DISPOSITION_ATTACHED_PIC ; 
 int AV_DISPOSITION_TIMED_THUMBNAILS ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int) ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,scalar_t__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static void FUNC12(AVFormatContext *s)
{
    MOVContext *mov = s->priv_data;
    AVStream *st;
    MOVStreamContext *sc;
    int64_t cur_pos;
    int i, j;
    int chapter_track;

    for (j = 0; j < mov->nb_chapter_tracks; j++) {
        chapter_track = mov->chapter_tracks[j];
        st = NULL;
        for (i = 0; i < s->nb_streams; i++)
            if (s->streams[i]->id == chapter_track) {
                st = s->streams[i];
                break;
            }
        if (!st) {
            FUNC3(s, AV_LOG_ERROR, "Referenced QT chapter track not found\n");
            continue;
        }

        sc = st->priv_data;
        cur_pos = FUNC10(sc->pb);

        if (st->codecpar->codec_type == AVMEDIA_TYPE_VIDEO) {
            st->disposition |= AV_DISPOSITION_ATTACHED_PIC | AV_DISPOSITION_TIMED_THUMBNAILS;
            if (st->nb_index_entries) {
                // Retrieve the first frame, if possible
                AVPacket pkt;
                AVIndexEntry *sample = &st->index_entries[0];
                if (FUNC9(sc->pb, sample->pos, SEEK_SET) != sample->pos) {
                    FUNC3(s, AV_LOG_ERROR, "Failed to retrieve first frame\n");
                    goto finish;
                }

                if (FUNC2(sc->pb, &pkt, sample->size) < 0)
                    goto finish;

                st->attached_pic              = pkt;
                st->attached_pic.stream_index = st->index;
                st->attached_pic.flags       |= AV_PKT_FLAG_KEY;
            }
        } else {
            st->codecpar->codec_type = AVMEDIA_TYPE_DATA;
            st->codecpar->codec_id = AV_CODEC_ID_BIN_DATA;
            st->discard = AVDISCARD_ALL;
            for (i = 0; i < st->nb_index_entries; i++) {
                AVIndexEntry *sample = &st->index_entries[i];
                int64_t end = i+1 < st->nb_index_entries ? st->index_entries[i+1].timestamp : st->duration;
                uint8_t *title;
                uint16_t ch;
                int len, title_len;

                if (end < sample->timestamp) {
                    FUNC3(s, AV_LOG_WARNING, "ignoring stream duration which is shorter than chapters\n");
                    end = AV_NOPTS_VALUE;
                }

                if (FUNC9(sc->pb, sample->pos, SEEK_SET) != sample->pos) {
                    FUNC3(s, AV_LOG_ERROR, "Chapter %d not found in file\n", i);
                    goto finish;
                }

                // the first two bytes are the length of the title
                len = FUNC8(sc->pb);
                if (len > sample->size-2)
                    continue;
                title_len = 2*len + 1;
                if (!(title = FUNC4(title_len)))
                    goto finish;

                // The samples could theoretically be in any encoding if there's an encd
                // atom following, but in practice are only utf-8 or utf-16, distinguished
                // instead by the presence of a BOM
                if (!len) {
                    title[0] = 0;
                } else {
                    ch = FUNC8(sc->pb);
                    if (ch == 0xfeff)
                        FUNC6(sc->pb, len, title, title_len);
                    else if (ch == 0xfffe)
                        FUNC7(sc->pb, len, title, title_len);
                    else {
                        FUNC0(title, ch);
                        if (len == 1 || len == 2)
                            title[len] = 0;
                        else
                            FUNC5(sc->pb, INT_MAX, title + 2, len - 1);
                    }
                }

                FUNC11(s, i, st->time_base, sample->timestamp, end, title);
                FUNC1(&title);
            }
        }
finish:
        FUNC9(sc->pb, cur_pos, SEEK_SET);
    }
}