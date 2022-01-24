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
typedef  scalar_t__ uint64_t ;
typedef  long long uint32_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_14__ {int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_13__ {long long nb_frames; long long duration; TYPE_1__* codecpar; } ;
struct TYPE_12__ {int num_streams; } ;
struct TYPE_11__ {int codec_id; int width; int height; int channels; int sample_rate; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ PMPContext ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVINDEX_KEYFRAME ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int AV_CODEC_ID_AAC ; 
 int AV_CODEC_ID_H264 ; 
 int AV_CODEC_ID_MP3 ; 
 int AV_CODEC_ID_MPEG4 ; 
 int AV_CODEC_ID_NONE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__,unsigned int,long long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int,int,int) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s)
{
    PMPContext *pmp = s->priv_data;
    AVIOContext *pb = s->pb;
    int tb_num, tb_den;
    uint32_t index_cnt;
    int audio_codec_id = AV_CODEC_ID_NONE;
    int srate, channels;
    unsigned i;
    uint64_t pos;
    int64_t fsize = FUNC7(pb);

    AVStream *vst = FUNC3(s, NULL);
    if (!vst)
        return FUNC0(ENOMEM);
    vst->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    FUNC8(pb, 8);
    switch (FUNC6(pb)) {
    case 0:
        vst->codecpar->codec_id = AV_CODEC_ID_MPEG4;
        break;
    case 1:
        vst->codecpar->codec_id = AV_CODEC_ID_H264;
        break;
    default:
        FUNC2(s, AV_LOG_ERROR, "Unsupported video format\n");
        break;
    }
    index_cnt          = FUNC6(pb);
    vst->codecpar->width  = FUNC6(pb);
    vst->codecpar->height = FUNC6(pb);

    tb_num = FUNC6(pb);
    tb_den = FUNC6(pb);
    FUNC10(vst, 32, tb_num, tb_den);
    vst->nb_frames = index_cnt;
    vst->duration = index_cnt;

    switch (FUNC6(pb)) {
    case 0:
        audio_codec_id = AV_CODEC_ID_MP3;
        break;
    case 1:
        FUNC2(s, AV_LOG_ERROR, "AAC not yet correctly supported\n");
        audio_codec_id = AV_CODEC_ID_AAC;
        break;
    default:
        FUNC2(s, AV_LOG_ERROR, "Unsupported audio format\n");
        break;
    }
    pmp->num_streams = FUNC5(pb) + 1;
    FUNC8(pb, 10);
    srate = FUNC6(pb);
    channels = FUNC6(pb) + 1;
    pos = FUNC9(pb) + 4LL*index_cnt;
    for (i = 0; i < index_cnt; i++) {
        uint32_t size = FUNC6(pb);
        int flags = size & 1 ? AVINDEX_KEYFRAME : 0;
        if (FUNC4(pb)) {
            FUNC2(s, AV_LOG_FATAL, "Encountered EOF while reading index.\n");
            return AVERROR_INVALIDDATA;
        }
        size >>= 1;
        if (size < 9 + 4*pmp->num_streams) {
            FUNC2(s, AV_LOG_ERROR, "Packet too small\n");
            return AVERROR_INVALIDDATA;
        }
        FUNC1(vst, pos, i, size, 0, flags);
        pos += size;
        if (fsize > 0 && i == 0 && pos > fsize) {
            FUNC2(s, AV_LOG_ERROR, "File ends before first packet\n");
            return AVERROR_INVALIDDATA;
        }
    }
    for (i = 1; i < pmp->num_streams; i++) {
        AVStream *ast = FUNC3(s, NULL);
        if (!ast)
            return FUNC0(ENOMEM);
        ast->codecpar->codec_type  = AVMEDIA_TYPE_AUDIO;
        ast->codecpar->codec_id    = audio_codec_id;
        ast->codecpar->channels    = channels;
        ast->codecpar->sample_rate = srate;
        FUNC10(ast, 32, 1, srate);
    }
    return 0;
}