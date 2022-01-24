#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_19__ {int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_18__ {int stream_index; unsigned int pts; int /*<<< orphan*/  data; int /*<<< orphan*/  pos; } ;
struct TYPE_17__ {int index; TYPE_1__* codecpar; } ;
struct TYPE_16__ {int video_stream_index; int frame_rate; int audio_stream_index; unsigned int audio_channels; unsigned int audio_frame_count; int /*<<< orphan*/  video_pts; void* height; void* width; } ;
struct TYPE_15__ {int channels; int sample_rate; int bits_per_coded_sample; int bit_rate; int block_align; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  codec_tag; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; void* height; void* width; } ;
typedef  TYPE_2__ RoqDemuxContext ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_MONO ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_STEREO ; 
 int /*<<< orphan*/  AV_CODEC_ID_ROQ ; 
 int /*<<< orphan*/  AV_CODEC_ID_ROQ_DPCM ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 void* FUNC1 (unsigned char*) ; 
 int FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 unsigned int INT_MAX ; 
 int RoQ_AUDIO_SAMPLE_RATE ; 
 int RoQ_CHUNK_PREAMBLE_SIZE ; 
#define  RoQ_INFO 132 
#define  RoQ_QUAD_CODEBOOK 131 
#define  RoQ_QUAD_VQ 130 
#define  RoQ_SOUND_MONO 129 
#define  RoQ_SOUND_STEREO 128 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 TYPE_3__* FUNC7 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int,int,int) ; 
 unsigned int FUNC14 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static int FUNC16(AVFormatContext *s,
                           AVPacket *pkt)
{
    RoqDemuxContext *roq = s->priv_data;
    AVIOContext *pb = s->pb;
    int ret = 0;
    unsigned int chunk_size;
    unsigned int chunk_type;
    unsigned int codebook_size;
    unsigned char preamble[RoQ_CHUNK_PREAMBLE_SIZE];
    int packet_read = 0;
    int64_t codebook_offset;

    while (!packet_read) {

        if (FUNC8(s->pb))
            return FUNC0(EIO);

        /* get the next chunk preamble */
        if ((ret = FUNC9(pb, preamble, RoQ_CHUNK_PREAMBLE_SIZE)) !=
            RoQ_CHUNK_PREAMBLE_SIZE)
            return FUNC0(EIO);

        chunk_type = FUNC1(&preamble[0]);
        chunk_size = FUNC2(&preamble[2]);
        if(chunk_size > INT_MAX)
            return AVERROR_INVALIDDATA;

        chunk_size = FUNC14(pb, chunk_size);

        switch (chunk_type) {

        case RoQ_INFO:
            if (roq->video_stream_index == -1) {
                AVStream *st = FUNC7(s, NULL);
                if (!st)
                    return FUNC0(ENOMEM);
                FUNC13(st, 63, 1, roq->frame_rate);
                roq->video_stream_index = st->index;
                st->codecpar->codec_type   = AVMEDIA_TYPE_VIDEO;
                st->codecpar->codec_id     = AV_CODEC_ID_ROQ;
                st->codecpar->codec_tag    = 0;  /* no fourcc */

                if (FUNC9(pb, preamble, RoQ_CHUNK_PREAMBLE_SIZE) != RoQ_CHUNK_PREAMBLE_SIZE)
                    return FUNC0(EIO);
                st->codecpar->width  = roq->width  = FUNC1(preamble);
                st->codecpar->height = roq->height = FUNC1(preamble + 2);
                break;
            }
            /* don't care about this chunk anymore */
            FUNC11(pb, RoQ_CHUNK_PREAMBLE_SIZE);
            break;

        case RoQ_QUAD_CODEBOOK:
            if (roq->video_stream_index < 0)
                return AVERROR_INVALIDDATA;
            /* packet needs to contain both this codebook and next VQ chunk */
            codebook_offset = FUNC12(pb) - RoQ_CHUNK_PREAMBLE_SIZE;
            codebook_size = chunk_size;
            FUNC11(pb, codebook_size);
            if (FUNC9(pb, preamble, RoQ_CHUNK_PREAMBLE_SIZE) !=
                RoQ_CHUNK_PREAMBLE_SIZE)
                return FUNC0(EIO);
            chunk_size = FUNC2(&preamble[2]) + RoQ_CHUNK_PREAMBLE_SIZE * 2 +
                codebook_size;

            if (chunk_size > INT_MAX)
                return AVERROR_INVALIDDATA;

            /* rewind */
            FUNC10(pb, codebook_offset, SEEK_SET);

            /* load up the packet */
            ret= FUNC3(pb, pkt, chunk_size);
            if (ret != chunk_size)
                return FUNC0(EIO);
            pkt->stream_index = roq->video_stream_index;
            pkt->pts = roq->video_pts++;

            packet_read = 1;
            break;

        case RoQ_SOUND_MONO:
        case RoQ_SOUND_STEREO:
            if (roq->audio_stream_index == -1) {
                AVStream *st = FUNC7(s, NULL);
                if (!st)
                    return FUNC0(ENOMEM);
                FUNC13(st, 32, 1, RoQ_AUDIO_SAMPLE_RATE);
                roq->audio_stream_index = st->index;
                st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
                st->codecpar->codec_id = AV_CODEC_ID_ROQ_DPCM;
                st->codecpar->codec_tag = 0;  /* no tag */
                if (chunk_type == RoQ_SOUND_STEREO) {
                    st->codecpar->channels       = 2;
                    st->codecpar->channel_layout = AV_CH_LAYOUT_STEREO;
                } else {
                    st->codecpar->channels       = 1;
                    st->codecpar->channel_layout = AV_CH_LAYOUT_MONO;
                }
                roq->audio_channels    = st->codecpar->channels;
                st->codecpar->sample_rate = RoQ_AUDIO_SAMPLE_RATE;
                st->codecpar->bits_per_coded_sample = 16;
                st->codecpar->bit_rate = st->codecpar->channels * st->codecpar->sample_rate *
                    st->codecpar->bits_per_coded_sample;
                st->codecpar->block_align = st->codecpar->channels * st->codecpar->bits_per_coded_sample;
            }
        case RoQ_QUAD_VQ:
            if (chunk_type == RoQ_QUAD_VQ) {
                if (roq->video_stream_index < 0)
                    return AVERROR_INVALIDDATA;
            }

            /* load up the packet */
            if (FUNC5(pkt, chunk_size + RoQ_CHUNK_PREAMBLE_SIZE))
                return FUNC0(EIO);
            /* copy over preamble */
            FUNC15(pkt->data, preamble, RoQ_CHUNK_PREAMBLE_SIZE);

            if (chunk_type == RoQ_QUAD_VQ) {
                pkt->stream_index = roq->video_stream_index;
                pkt->pts = roq->video_pts++;
            } else {
                pkt->stream_index = roq->audio_stream_index;
                pkt->pts = roq->audio_frame_count;
                roq->audio_frame_count += (chunk_size / roq->audio_channels);
            }

            pkt->pos= FUNC12(pb);
            ret = FUNC9(pb, pkt->data + RoQ_CHUNK_PREAMBLE_SIZE,
                chunk_size);
            if (ret != chunk_size) {
                FUNC6(pkt);
                ret = FUNC0(EIO);
            }

            packet_read = 1;
            break;

        default:
            FUNC4(s, AV_LOG_ERROR, "  unknown RoQ chunk (%04X)\n", chunk_type);
            return AVERROR_INVALIDDATA;
        }
    }

    return ret;
}