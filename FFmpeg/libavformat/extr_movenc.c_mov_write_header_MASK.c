#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_30__ {int /*<<< orphan*/  value; } ;
struct TYPE_29__ {int nb_streams; TYPE_5__** streams; scalar_t__ nb_chapters; int /*<<< orphan*/  metadata; TYPE_4__* priv_data; int /*<<< orphan*/ * pb; } ;
struct TYPE_28__ {int /*<<< orphan*/  metadata; TYPE_1__* codecpar; } ;
struct TYPE_27__ {int mode; int flags; scalar_t__ reserved_moov_size; int moov_written; void* reserved_header_pos; scalar_t__ nb_meta_tmcd; scalar_t__ chapter_track; scalar_t__ time; int /*<<< orphan*/  max_fragment_size; int /*<<< orphan*/  max_fragment_duration; TYPE_3__* tracks; } ;
struct TYPE_26__ {scalar_t__ tag; scalar_t__ language; int /*<<< orphan*/  multichannel_as_mono; TYPE_2__* par; scalar_t__ vos_len; scalar_t__ vos_data; } ;
struct TYPE_25__ {scalar_t__ channel_layout; } ;
struct TYPE_24__ {scalar_t__ codec_id; scalar_t__ codec_type; int /*<<< orphan*/  extradata; scalar_t__ extradata_size; } ;
typedef  TYPE_3__ MOVTrack ;
typedef  TYPE_4__ MOVMuxContext ;
typedef  int /*<<< orphan*/  AVTimecode ;
typedef  TYPE_5__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_6__ AVFormatContext ;
typedef  TYPE_7__ AVDictionaryEntry ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 scalar_t__ AV_CH_LAYOUT_MONO ; 
 scalar_t__ AV_CODEC_ID_DNXHD ; 
 scalar_t__ AV_CODEC_ID_DVD_SUBTITLE ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FF_MOV_FLAG_DELAY_MOOV ; 
 int FF_MOV_FLAG_EMPTY_MOOV ; 
 int FF_MOV_FLAG_FASTSTART ; 
 int FF_MOV_FLAG_FRAGMENT ; 
 int FF_MOV_FLAG_FRAG_CUSTOM ; 
 int FF_MOV_FLAG_FRAG_EVERY_FRAME ; 
 int FF_MOV_FLAG_FRAG_KEYFRAME ; 
 int FF_MOV_FLAG_GLOBAL_SIDX ; 
 int FF_MOV_FLAG_ISML ; 
 int FF_MOV_FLAG_RTP_HINT ; 
 int MODE_IPOD ; 
 int MODE_MOV ; 
 int MODE_MP4 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_7__* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_6__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (TYPE_6__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_6__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,TYPE_5__*) ; 
 int FUNC14 (TYPE_6__*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC18 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_6__*) ; 
 scalar_t__ FUNC19 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC20(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    MOVMuxContext *mov = s->priv_data;
    AVDictionaryEntry *t, *global_tcr = FUNC2(s->metadata, "timecode", NULL, 0);
    int i, ret, hint_track = 0, tmcd_track = 0, nb_tracks = s->nb_streams;

    if (mov->mode & (MODE_MP4|MODE_MOV|MODE_IPOD) && s->nb_chapters)
        nb_tracks++;

    if (mov->flags & FF_MOV_FLAG_RTP_HINT) {
        hint_track = nb_tracks;
        for (i = 0; i < s->nb_streams; i++)
            if (FUNC19(s->streams[i]))
                nb_tracks++;
    }

    if (mov->nb_meta_tmcd)
        tmcd_track = nb_tracks;

    for (i = 0; i < s->nb_streams; i++) {
        int j;
        AVStream *st= s->streams[i];
        MOVTrack *track= &mov->tracks[i];

        /* copy extradata if it exists */
        if (st->codecpar->extradata_size) {
            if (st->codecpar->codec_id == AV_CODEC_ID_DVD_SUBTITLE)
                FUNC13(track, st);
            else if (!FUNC1(track->tag) && st->codecpar->codec_id != AV_CODEC_ID_DNXHD) {
                track->vos_len  = st->codecpar->extradata_size;
                track->vos_data = FUNC3(track->vos_len + AV_INPUT_BUFFER_PADDING_SIZE);
                if (!track->vos_data) {
                    return FUNC0(ENOMEM);
                }
                FUNC9(track->vos_data, st->codecpar->extradata, track->vos_len);
                FUNC10(track->vos_data + track->vos_len, 0, AV_INPUT_BUFFER_PADDING_SIZE);
            }
        }

        if (st->codecpar->codec_type != AVMEDIA_TYPE_AUDIO ||
            track->par->channel_layout != AV_CH_LAYOUT_MONO)
            continue;

        for (j = 0; j < s->nb_streams; j++) {
            AVStream *stj= s->streams[j];
            MOVTrack *trackj= &mov->tracks[j];
            if (j == i)
                continue;

            if (stj->codecpar->codec_type != AVMEDIA_TYPE_AUDIO ||
                trackj->par->channel_layout != AV_CH_LAYOUT_MONO ||
                trackj->language != track->language ||
                trackj->tag != track->tag
            )
                continue;
            track->multichannel_as_mono++;
        }
    }

    if (!(mov->flags & FF_MOV_FLAG_DELAY_MOOV)) {
        if ((ret = FUNC15(pb, s)) < 0)
            return ret;
    }

    if (mov->reserved_moov_size){
        mov->reserved_header_pos = FUNC6(pb);
        if (mov->reserved_moov_size > 0)
            FUNC5(pb, mov->reserved_moov_size);
    }

    if (mov->flags & FF_MOV_FLAG_FRAGMENT) {
        /* If no fragmentation options have been set, set a default. */
        if (!(mov->flags & (FF_MOV_FLAG_FRAG_KEYFRAME |
                            FF_MOV_FLAG_FRAG_CUSTOM |
                            FF_MOV_FLAG_FRAG_EVERY_FRAME)) &&
            !mov->max_fragment_duration && !mov->max_fragment_size)
            mov->flags |= FF_MOV_FLAG_FRAG_KEYFRAME;
    } else {
        if (mov->flags & FF_MOV_FLAG_FASTSTART)
            mov->reserved_header_pos = FUNC6(pb);
        FUNC17(pb, mov);
    }

    FUNC8(s, &mov->time, 1);
    if (mov->time)
        mov->time += 0x7C25B080; // 1970 based -> 1904 based

    if (mov->chapter_track)
        if ((ret = FUNC12(s, mov->chapter_track)) < 0)
            return ret;

    if (mov->flags & FF_MOV_FLAG_RTP_HINT) {
        for (i = 0; i < s->nb_streams; i++) {
            if (FUNC19(s->streams[i])) {
                if ((ret = FUNC7(s, hint_track, i)) < 0)
                    return ret;
                hint_track++;
            }
        }
    }

    if (mov->nb_meta_tmcd) {
        /* Initialize the tmcd tracks */
        for (i = 0; i < s->nb_streams; i++) {
            AVStream *st = s->streams[i];
            t = global_tcr;

            if (st->codecpar->codec_type == AVMEDIA_TYPE_VIDEO) {
                AVTimecode tc;
                if (!t)
                    t = FUNC2(st->metadata, "timecode", NULL, 0);
                if (!t)
                    continue;
                if (FUNC11(s, &tc, i, t->value) < 0)
                    continue;
                if ((ret = FUNC14(s, tmcd_track, i, tc)) < 0)
                    return ret;
                tmcd_track++;
            }
        }
    }

    FUNC4(pb);

    if (mov->flags & FF_MOV_FLAG_ISML)
        FUNC16(pb, mov, s);

    if (mov->flags & FF_MOV_FLAG_EMPTY_MOOV &&
        !(mov->flags & FF_MOV_FLAG_DELAY_MOOV)) {
        if ((ret = FUNC18(pb, mov, s)) < 0)
            return ret;
        FUNC4(pb);
        mov->moov_written = 1;
        if (mov->flags & FF_MOV_FLAG_GLOBAL_SIDX)
            mov->reserved_header_pos = FUNC6(pb);
    }

    return 0;
}