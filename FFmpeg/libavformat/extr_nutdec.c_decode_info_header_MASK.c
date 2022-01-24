#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
typedef  int /*<<< orphan*/  type_str ;
typedef  int /*<<< orphan*/  str_value ;
typedef  int /*<<< orphan*/  name ;
typedef  size_t int64_t ;
struct TYPE_16__ {int /*<<< orphan*/ * metadata; } ;
struct TYPE_15__ {size_t nb_streams; int event_flags; int /*<<< orphan*/ * metadata; TYPE_3__** streams; int /*<<< orphan*/ * pb; } ;
struct TYPE_12__ {long long num; long long den; } ;
struct TYPE_14__ {int event_flags; TYPE_1__ r_frame_rate; int /*<<< orphan*/ * metadata; } ;
struct TYPE_13__ {size_t time_base_count; int /*<<< orphan*/ * time_base; TYPE_4__* avf; } ;
typedef  TYPE_2__ NUTContext ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  TYPE_5__ AVChapter ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVFMT_EVENT_FLAG_METADATA_UPDATED ; 
 int AVSTREAM_EVENT_FLAG_METADATA_UPDATED ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  INFO_STARTCODE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC7 (TYPE_4__*,int,int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (int /*<<< orphan*/ *) ; 
 size_t FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,char*,unsigned int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,long long*,long long*) ; 
 int /*<<< orphan*/  FUNC16 (char const*,char*) ; 

__attribute__((used)) static int FUNC17(NUTContext *nut)
{
    AVFormatContext *s = nut->avf;
    AVIOContext *bc    = s->pb;
    uint64_t tmp, chapter_start, chapter_len;
    unsigned int stream_id_plus1, count;
    int chapter_id, i, ret = 0;
    int64_t value, end;
    char name[256], str_value[1024], type_str[256];
    const char *type;
    int *event_flags        = NULL;
    AVChapter *chapter      = NULL;
    AVStream *st            = NULL;
    AVDictionary **metadata = NULL;
    int metadata_flag       = 0;

    end  = FUNC10(nut, bc, 1, INFO_STARTCODE);
    end += FUNC6(bc);

    FUNC2(stream_id_plus1, tmp <= s->nb_streams);
    chapter_id    = FUNC11(bc);
    chapter_start = FUNC9(bc);
    chapter_len   = FUNC9(bc);
    count         = FUNC9(bc);

    if (chapter_id && !stream_id_plus1) {
        int64_t start = chapter_start / nut->time_base_count;
        chapter = FUNC7(s, chapter_id,
                                     nut->time_base[chapter_start %
                                                    nut->time_base_count],
                                     start, start + chapter_len, NULL);
        if (!chapter) {
            FUNC4(s, AV_LOG_ERROR, "Could not create chapter.\n");
            return FUNC0(ENOMEM);
        }
        metadata = &chapter->metadata;
    } else if (stream_id_plus1) {
        st       = s->streams[stream_id_plus1 - 1];
        metadata = &st->metadata;
        event_flags = &st->event_flags;
        metadata_flag = AVSTREAM_EVENT_FLAG_METADATA_UPDATED;
    } else {
        metadata = &s->metadata;
        event_flags = &s->event_flags;
        metadata_flag = AVFMT_EVENT_FLAG_METADATA_UPDATED;
    }

    for (i = 0; i < count; i++) {
        ret = FUNC12(bc, name, sizeof(name));
        if (ret < 0) {
            FUNC4(s, AV_LOG_ERROR, "get_str failed while decoding info header\n");
            return ret;
        }
        value = FUNC11(bc);
        str_value[0] = 0;

        if (value == -1) {
            type = "UTF-8";
            ret = FUNC12(bc, str_value, sizeof(str_value));
        } else if (value == -2) {
            ret = FUNC12(bc, type_str, sizeof(type_str));
            if (ret < 0) {
                FUNC4(s, AV_LOG_ERROR, "get_str failed while decoding info header\n");
                return ret;
            }
            type = type_str;
            ret = FUNC12(bc, str_value, sizeof(str_value));
        } else if (value == -3) {
            type  = "s";
            value = FUNC11(bc);
        } else if (value == -4) {
            type  = "t";
            value = FUNC9(bc);
        } else if (value < -4) {
            type = "r";
            FUNC11(bc);
        } else {
            type = "v";
        }

        if (ret < 0) {
            FUNC4(s, AV_LOG_ERROR, "get_str failed while decoding info header\n");
            return ret;
        }

        if (stream_id_plus1 > s->nb_streams) {
            FUNC4(s, AV_LOG_WARNING,
                   "invalid stream id %d for info packet\n",
                   stream_id_plus1);
            continue;
        }

        if (!FUNC16(type, "UTF-8")) {
            if (chapter_id == 0 && !FUNC16(name, "Disposition")) {
                FUNC13(s, str_value, stream_id_plus1 - 1);
                continue;
            }

            if (stream_id_plus1 && !FUNC16(name, "r_frame_rate")) {
                FUNC15(str_value, "%d/%d", &st->r_frame_rate.num, &st->r_frame_rate.den);
                if (st->r_frame_rate.num >= 1000LL*st->r_frame_rate.den ||
                    st->r_frame_rate.num < 0 || st->r_frame_rate.den < 0)
                    st->r_frame_rate.num = st->r_frame_rate.den = 0;
                continue;
            }

            if (metadata && FUNC5(name, "Uses") &&
                FUNC5(name, "Depends") && FUNC5(name, "Replaces")) {
                if (event_flags)
                    *event_flags |= metadata_flag;
                FUNC3(metadata, name, str_value, 0);
            }
        }
    }

    if (FUNC14(bc, end) || FUNC8(bc)) {
        FUNC4(s, AV_LOG_ERROR, "info header checksum mismatch\n");
        return AVERROR_INVALIDDATA;
    }
fail:
    return FUNC1(ret, 0);
}