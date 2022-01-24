#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_4__** streams; TYPE_2__* priv_data; } ;
struct TYPE_19__ {int stream_index; int size; int /*<<< orphan*/  data; int /*<<< orphan*/  flags; } ;
struct TYPE_18__ {int /*<<< orphan*/  avg_frame_rate; } ;
struct TYPE_17__ {int flags; int /*<<< orphan*/  start; } ;
struct TYPE_16__ {TYPE_1__* tracks; int /*<<< orphan*/  mode; } ;
struct TYPE_15__ {int src_track; TYPE_4__* st; int /*<<< orphan*/  tag; TYPE_13__* par; int /*<<< orphan*/  timecode_flags; int /*<<< orphan*/  timescale; int /*<<< orphan*/  mode; } ;
struct TYPE_14__ {int /*<<< orphan*/  codec_tag; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_1__ MOVTrack ;
typedef  TYPE_2__ MOVMuxContext ;
typedef  TYPE_3__ AVTimecode ;
typedef  TYPE_4__ AVStream ;
typedef  int /*<<< orphan*/  AVRational ;
typedef  TYPE_5__ AVPacket ;
typedef  TYPE_6__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_DATA ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int AV_TIMECODE_FLAG_DROPFRAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (char,char,char,char) ; 
 int /*<<< orphan*/  MOV_TIMECODE_FLAG_DROPFRAME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_13__* FUNC6 () ; 
 int FUNC7 (TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,TYPE_4__*) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s, int index, int src_index, AVTimecode tc)
{
    int ret;
    MOVMuxContext *mov  = s->priv_data;
    MOVTrack *track     = &mov->tracks[index];
    AVStream *src_st    = s->streams[src_index];
    AVPacket pkt    = {.stream_index = index, .flags = AV_PKT_FLAG_KEY, .size = 4};
    AVRational rate = FUNC8(s, src_st);

    /* tmcd track based on video stream */
    track->mode      = mov->mode;
    track->tag       = FUNC2('t','m','c','d');
    track->src_track = src_index;
    track->timescale = mov->tracks[src_index].timescale;
    if (tc.flags & AV_TIMECODE_FLAG_DROPFRAME)
        track->timecode_flags |= MOV_TIMECODE_FLAG_DROPFRAME;

    /* set st to src_st for metadata access*/
    track->st = src_st;

    /* encode context: tmcd data stream */
    track->par = FUNC6();
    if (!track->par)
        return FUNC0(ENOMEM);
    track->par->codec_type = AVMEDIA_TYPE_DATA;
    track->par->codec_tag  = track->tag;
    track->st->avg_frame_rate = FUNC4(rate);

    /* the tmcd track just contains one packet with the frame number */
    pkt.data = FUNC5(pkt.size);
    if (!pkt.data)
        return FUNC0(ENOMEM);
    FUNC1(pkt.data, tc.start);
    ret = FUNC7(s, &pkt);
    FUNC3(pkt.data);
    return ret;
}