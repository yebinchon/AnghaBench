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
struct TYPE_11__ {TYPE_1__* codecpar; } ;
struct TYPE_10__ {scalar_t__ video_pts; scalar_t__ audio_pts; } ;
struct TYPE_9__ {unsigned int width; unsigned int height; int channels; int sample_rate; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  codec_id; scalar_t__ codec_tag; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ MmDemuxContext ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_MONO ; 
 int /*<<< orphan*/  AV_CODEC_ID_MMVIDEO ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_U8 ; 
 int /*<<< orphan*/  ENOMEM ; 
 unsigned int MM_HEADER_LEN_AV ; 
 unsigned int MM_TYPE_HEADER ; 
 TYPE_3__* FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int,int) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s)
{
    MmDemuxContext *mm = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *st;

    unsigned int type, length;
    unsigned int frame_rate, width, height;

    type = FUNC2(pb);
    length = FUNC3(pb);

    if (type != MM_TYPE_HEADER)
        return AVERROR_INVALIDDATA;

    /* read header */
    FUNC2(pb);   /* total number of chunks */
    frame_rate = FUNC2(pb);
    FUNC2(pb);   /* ibm-pc video bios mode */
    width = FUNC2(pb);
    height = FUNC2(pb);
    FUNC4(pb, length - 10);  /* unknown data */

    /* video stream */
    st = FUNC1(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_MMVIDEO;
    st->codecpar->codec_tag = 0;  /* no fourcc */
    st->codecpar->width = width;
    st->codecpar->height = height;
    FUNC5(st, 64, 1, frame_rate);

    /* audio stream */
    if (length == MM_HEADER_LEN_AV) {
        st = FUNC1(s, NULL);
        if (!st)
            return FUNC0(ENOMEM);
        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
        st->codecpar->codec_tag = 0; /* no fourcc */
        st->codecpar->codec_id = AV_CODEC_ID_PCM_U8;
        st->codecpar->channels = 1;
        st->codecpar->channel_layout = AV_CH_LAYOUT_MONO;
        st->codecpar->sample_rate = 8000;
        FUNC5(st, 64, 1, 8000); /* 8000 hz */
    }

    mm->audio_pts = 0;
    mm->video_pts = 0;
    return 0;
}