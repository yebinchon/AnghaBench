#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {int /*<<< orphan*/  pb; TYPE_3__** streams; TYPE_5__* priv_data; } ;
struct TYPE_25__ {int stream_index; int duration; int /*<<< orphan*/  pos; int /*<<< orphan*/  pts; int /*<<< orphan*/  flags; } ;
struct TYPE_19__ {int den; int /*<<< orphan*/  num; } ;
struct TYPE_24__ {int index; TYPE_4__* priv_data; TYPE_2__* codecpar; TYPE_1__ avg_frame_rate; } ;
struct TYPE_23__ {int type; int video_stream_index; int video_codec; int audio_stream_index; int audio_codec; int /*<<< orphan*/  last_good_pos; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  audio_channels; int /*<<< orphan*/  frame_rate; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_22__ {void* last_timestamp; } ;
struct TYPE_21__ {int /*<<< orphan*/  priv_data; } ;
struct TYPE_20__ {int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  channels; void* codec_id; int /*<<< orphan*/  codec_type; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_4__ DHAVStream ;
typedef  TYPE_5__ DHAVContext ;
typedef  TYPE_6__ AVStream ;
typedef  TYPE_7__ AVPacket ;
typedef  TYPE_8__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 void* AV_CODEC_ID_AAC ; 
 void* AV_CODEC_ID_ADPCM_MS ; 
 void* AV_CODEC_ID_H264 ; 
 void* AV_CODEC_ID_HEVC ; 
 void* AV_CODEC_ID_MJPEG ; 
 void* AV_CODEC_ID_MP2 ; 
 void* AV_CODEC_ID_MP3 ; 
 void* AV_CODEC_ID_MPEG4 ; 
 void* AV_CODEC_ID_PCM_ALAW ; 
 void* AV_CODEC_ID_PCM_MULAW ; 
 void* AV_CODEC_ID_PCM_S16LE ; 
 void* AV_CODEC_ID_PCM_S8 ; 
 void* AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (char,char,char,char) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_7__*,int) ; 
 TYPE_4__* FUNC3 (int) ; 
 TYPE_6__* FUNC4 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_8__*) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s, AVPacket *pkt)
{
    DHAVContext *dhav = s->priv_data;
    int ret, stream_index;

retry:
    while ((ret = FUNC10(s)) == 0)
        ;

    if (ret < 0)
        return ret;

    if (dhav->type == 0xfd && dhav->video_stream_index == -1) {
        AVStream *st = FUNC4(s, NULL);
        DHAVStream *dst;

        if (!st)
            return FUNC0(ENOMEM);

        st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
        switch (dhav->video_codec) {
        case 0x1: st->codecpar->codec_id = AV_CODEC_ID_MPEG4; break;
        case 0x3: st->codecpar->codec_id = AV_CODEC_ID_MJPEG; break;
        case 0x2:
        case 0x4:
        case 0x8: st->codecpar->codec_id = AV_CODEC_ID_H264;  break;
        case 0xc: st->codecpar->codec_id = AV_CODEC_ID_HEVC;  break;
        default: FUNC7(s, "Unknown video codec %X\n", dhav->video_codec);
        }
        st->codecpar->width      = dhav->width;
        st->codecpar->height     = dhav->height;
        st->avg_frame_rate.num   = dhav->frame_rate;
        st->avg_frame_rate.den   = 1;
        st->priv_data = dst = FUNC3(sizeof(DHAVStream));
        if (!st->priv_data)
            return FUNC0(ENOMEM);
        dst->last_timestamp = AV_NOPTS_VALUE;
        dhav->video_stream_index = st->index;

        FUNC8(st, 64, 1, 1000);
    } else if (dhav->type == 0xf0 && dhav->audio_stream_index == -1) {
        AVStream *st = FUNC4(s, NULL);
        DHAVStream *dst;

        if (!st)
            return FUNC0(ENOMEM);

        st->codecpar->codec_type  = AVMEDIA_TYPE_AUDIO;
        switch (dhav->audio_codec) {
        case 0x07: st->codecpar->codec_id = AV_CODEC_ID_PCM_S8;    break;
        case 0x0c: st->codecpar->codec_id = AV_CODEC_ID_PCM_S16LE; break;
        case 0x10: st->codecpar->codec_id = AV_CODEC_ID_PCM_S16LE; break;
        case 0x0a: st->codecpar->codec_id = AV_CODEC_ID_PCM_MULAW; break;
        case 0x16: st->codecpar->codec_id = AV_CODEC_ID_PCM_MULAW; break;
        case 0x0e: st->codecpar->codec_id = AV_CODEC_ID_PCM_ALAW;  break;
        case 0x1a: st->codecpar->codec_id = AV_CODEC_ID_AAC;       break;
        case 0x1f: st->codecpar->codec_id = AV_CODEC_ID_MP2;       break;
        case 0x21: st->codecpar->codec_id = AV_CODEC_ID_MP3;       break;
        case 0x0d: st->codecpar->codec_id = AV_CODEC_ID_ADPCM_MS;  break;
        default: FUNC7(s, "Unknown audio codec %X\n", dhav->audio_codec);
        }
        st->codecpar->channels    = dhav->audio_channels;
        st->codecpar->sample_rate = dhav->sample_rate;
        st->priv_data = dst = FUNC3(sizeof(DHAVStream));
        if (!st->priv_data)
            return FUNC0(ENOMEM);
        dst->last_timestamp = AV_NOPTS_VALUE;
        dhav->audio_stream_index  = st->index;

        FUNC8(st, 64, 1, 1000);
    }

    stream_index = dhav->type == 0xf0 ? dhav->audio_stream_index : dhav->video_stream_index;
    if (stream_index < 0) {
        FUNC6(s->pb, ret);
        if (FUNC5(s->pb) == FUNC1('d','h','a','v'))
            FUNC6(s->pb, 4);
        goto retry;
    }

    ret = FUNC2(s->pb, pkt, ret);
    if (ret < 0)
        return ret;
    pkt->stream_index = stream_index;
    if (dhav->type != 0xfc)
        pkt->flags   |= AV_PKT_FLAG_KEY;
    if (pkt->stream_index >= 0)
        pkt->pts = FUNC9(s, s->streams[pkt->stream_index]->priv_data);
    pkt->duration = 1;
    pkt->pos = dhav->last_good_pos;
    if (FUNC5(s->pb) == FUNC1('d','h','a','v'))
        FUNC6(s->pb, 4);

    return ret;
}