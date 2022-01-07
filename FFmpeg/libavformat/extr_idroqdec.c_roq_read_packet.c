
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_19__ {int * pb; TYPE_2__* priv_data; } ;
struct TYPE_18__ {int stream_index; unsigned int pts; int data; int pos; } ;
struct TYPE_17__ {int index; TYPE_1__* codecpar; } ;
struct TYPE_16__ {int video_stream_index; int frame_rate; int audio_stream_index; unsigned int audio_channels; unsigned int audio_frame_count; int video_pts; void* height; void* width; } ;
struct TYPE_15__ {int channels; int sample_rate; int bits_per_coded_sample; int bit_rate; int block_align; int channel_layout; int codec_tag; int codec_id; int codec_type; void* height; void* width; } ;
typedef TYPE_2__ RoqDemuxContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CH_LAYOUT_STEREO ;
 int AV_CODEC_ID_ROQ ;
 int AV_CODEC_ID_ROQ_DPCM ;
 int AV_LOG_ERROR ;
 void* AV_RL16 (unsigned char*) ;
 int AV_RL32 (unsigned char*) ;
 int EIO ;
 int ENOMEM ;
 unsigned int INT_MAX ;
 int RoQ_AUDIO_SAMPLE_RATE ;
 int RoQ_CHUNK_PREAMBLE_SIZE ;





 int SEEK_SET ;
 int av_get_packet (int *,TYPE_4__*,unsigned int) ;
 int av_log (TYPE_5__*,int ,char*,unsigned int) ;
 int av_new_packet (TYPE_4__*,unsigned int) ;
 int av_packet_unref (TYPE_4__*) ;
 TYPE_3__* avformat_new_stream (TYPE_5__*,int *) ;
 scalar_t__ avio_feof (int *) ;
 int avio_read (int *,unsigned char*,unsigned int) ;
 int avio_seek (int *,int ,int ) ;
 int avio_skip (int *,unsigned int) ;
 int avio_tell (int *) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;
 unsigned int ffio_limit (int *,unsigned int) ;
 int memcpy (int ,unsigned char*,int) ;

__attribute__((used)) static int roq_read_packet(AVFormatContext *s,
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

        if (avio_feof(s->pb))
            return AVERROR(EIO);


        if ((ret = avio_read(pb, preamble, RoQ_CHUNK_PREAMBLE_SIZE)) !=
            RoQ_CHUNK_PREAMBLE_SIZE)
            return AVERROR(EIO);

        chunk_type = AV_RL16(&preamble[0]);
        chunk_size = AV_RL32(&preamble[2]);
        if(chunk_size > INT_MAX)
            return AVERROR_INVALIDDATA;

        chunk_size = ffio_limit(pb, chunk_size);

        switch (chunk_type) {

        case 132:
            if (roq->video_stream_index == -1) {
                AVStream *st = avformat_new_stream(s, ((void*)0));
                if (!st)
                    return AVERROR(ENOMEM);
                avpriv_set_pts_info(st, 63, 1, roq->frame_rate);
                roq->video_stream_index = st->index;
                st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
                st->codecpar->codec_id = AV_CODEC_ID_ROQ;
                st->codecpar->codec_tag = 0;

                if (avio_read(pb, preamble, RoQ_CHUNK_PREAMBLE_SIZE) != RoQ_CHUNK_PREAMBLE_SIZE)
                    return AVERROR(EIO);
                st->codecpar->width = roq->width = AV_RL16(preamble);
                st->codecpar->height = roq->height = AV_RL16(preamble + 2);
                break;
            }

            avio_skip(pb, RoQ_CHUNK_PREAMBLE_SIZE);
            break;

        case 131:
            if (roq->video_stream_index < 0)
                return AVERROR_INVALIDDATA;

            codebook_offset = avio_tell(pb) - RoQ_CHUNK_PREAMBLE_SIZE;
            codebook_size = chunk_size;
            avio_skip(pb, codebook_size);
            if (avio_read(pb, preamble, RoQ_CHUNK_PREAMBLE_SIZE) !=
                RoQ_CHUNK_PREAMBLE_SIZE)
                return AVERROR(EIO);
            chunk_size = AV_RL32(&preamble[2]) + RoQ_CHUNK_PREAMBLE_SIZE * 2 +
                codebook_size;

            if (chunk_size > INT_MAX)
                return AVERROR_INVALIDDATA;


            avio_seek(pb, codebook_offset, SEEK_SET);


            ret= av_get_packet(pb, pkt, chunk_size);
            if (ret != chunk_size)
                return AVERROR(EIO);
            pkt->stream_index = roq->video_stream_index;
            pkt->pts = roq->video_pts++;

            packet_read = 1;
            break;

        case 129:
        case 128:
            if (roq->audio_stream_index == -1) {
                AVStream *st = avformat_new_stream(s, ((void*)0));
                if (!st)
                    return AVERROR(ENOMEM);
                avpriv_set_pts_info(st, 32, 1, RoQ_AUDIO_SAMPLE_RATE);
                roq->audio_stream_index = st->index;
                st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
                st->codecpar->codec_id = AV_CODEC_ID_ROQ_DPCM;
                st->codecpar->codec_tag = 0;
                if (chunk_type == 128) {
                    st->codecpar->channels = 2;
                    st->codecpar->channel_layout = AV_CH_LAYOUT_STEREO;
                } else {
                    st->codecpar->channels = 1;
                    st->codecpar->channel_layout = AV_CH_LAYOUT_MONO;
                }
                roq->audio_channels = st->codecpar->channels;
                st->codecpar->sample_rate = RoQ_AUDIO_SAMPLE_RATE;
                st->codecpar->bits_per_coded_sample = 16;
                st->codecpar->bit_rate = st->codecpar->channels * st->codecpar->sample_rate *
                    st->codecpar->bits_per_coded_sample;
                st->codecpar->block_align = st->codecpar->channels * st->codecpar->bits_per_coded_sample;
            }
        case 130:
            if (chunk_type == 130) {
                if (roq->video_stream_index < 0)
                    return AVERROR_INVALIDDATA;
            }


            if (av_new_packet(pkt, chunk_size + RoQ_CHUNK_PREAMBLE_SIZE))
                return AVERROR(EIO);

            memcpy(pkt->data, preamble, RoQ_CHUNK_PREAMBLE_SIZE);

            if (chunk_type == 130) {
                pkt->stream_index = roq->video_stream_index;
                pkt->pts = roq->video_pts++;
            } else {
                pkt->stream_index = roq->audio_stream_index;
                pkt->pts = roq->audio_frame_count;
                roq->audio_frame_count += (chunk_size / roq->audio_channels);
            }

            pkt->pos= avio_tell(pb);
            ret = avio_read(pb, pkt->data + RoQ_CHUNK_PREAMBLE_SIZE,
                chunk_size);
            if (ret != chunk_size) {
                av_packet_unref(pkt);
                ret = AVERROR(EIO);
            }

            packet_read = 1;
            break;

        default:
            av_log(s, AV_LOG_ERROR, "  unknown RoQ chunk (%04X)\n", chunk_type);
            return AVERROR_INVALIDDATA;
        }
    }

    return ret;
}
