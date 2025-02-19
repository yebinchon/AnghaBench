
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_21__ {TYPE_2__* priv_data; int * pb; } ;
struct TYPE_20__ {int stream_index; int size; int * data; int flags; } ;
struct TYPE_19__ {size_t frames; int index; int length; } ;
struct TYPE_18__ {size_t current_block; int next_pkt_is_audio; size_t current_frame; int* frame_offsets; TYPE_10__* audio; TYPE_3__* block_records; } ;
struct TYPE_17__ {int codec_type; } ;
struct TYPE_16__ {TYPE_1__* codecpar; } ;
typedef TYPE_2__ C93DemuxContext ;
typedef TYPE_3__ C93BlockRecord ;
typedef TYPE_4__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_LOG_ERROR ;
 int AV_PKT_FLAG_KEY ;
 int C93_FIRST_FRAME ;
 int C93_HAS_PALETTE ;
 int EIO ;
 int ENOMEM ;
 int SEEK_SET ;
 int av_log (TYPE_5__*,int ,char*,int) ;
 int av_new_packet (TYPE_4__*,int) ;
 int av_packet_unref (TYPE_4__*) ;
 TYPE_10__* avformat_new_stream (TYPE_5__*,int *) ;
 int avio_read (int *,int *,int) ;
 int avio_rl16 (int *) ;
 int avio_rl32 (int *) ;
 int avio_seek (int *,int,int ) ;
 int avio_skip (int *,int) ;
 int ff_voc_get_packet (TYPE_5__*,TYPE_4__*,TYPE_10__*,int) ;

__attribute__((used)) static int read_packet(AVFormatContext *s, AVPacket *pkt)
{
    AVIOContext *pb = s->pb;
    C93DemuxContext *c93 = s->priv_data;
    C93BlockRecord *br = &c93->block_records[c93->current_block];
    int datasize;
    int ret, i;

    if (c93->next_pkt_is_audio) {
        c93->current_frame++;
        c93->next_pkt_is_audio = 0;
        datasize = avio_rl16(pb);
        if (datasize > 42) {
            if (!c93->audio) {
                c93->audio = avformat_new_stream(s, ((void*)0));
                if (!c93->audio)
                    return AVERROR(ENOMEM);
                c93->audio->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
            }
            avio_skip(pb, 26);
            ret = ff_voc_get_packet(s, pkt, c93->audio, datasize - 26);
            if (ret > 0) {
                pkt->stream_index = 1;
                pkt->flags |= AV_PKT_FLAG_KEY;
                return ret;
            }
        }
    }
    if (c93->current_frame >= br->frames) {
        if (c93->current_block >= 511 || !br[1].length)
            return AVERROR_EOF;
        br++;
        c93->current_block++;
        c93->current_frame = 0;
    }

    if (c93->current_frame == 0) {
        avio_seek(pb, br->index * 2048, SEEK_SET);
        for (i = 0; i < 32; i++) {
            c93->frame_offsets[i] = avio_rl32(pb);
        }
    }

    avio_seek(pb,br->index * 2048 +
            c93->frame_offsets[c93->current_frame], SEEK_SET);
    datasize = avio_rl16(pb);

    ret = av_new_packet(pkt, datasize + 768 + 1);
    if (ret < 0)
        return ret;
    pkt->data[0] = 0;
    pkt->size = datasize + 1;

    ret = avio_read(pb, pkt->data + 1, datasize);
    if (ret < datasize) {
        ret = AVERROR(EIO);
        goto fail;
    }

    datasize = avio_rl16(pb);
    if (datasize) {
        if (datasize != 768) {
            av_log(s, AV_LOG_ERROR, "invalid palette size %u\n", datasize);
            ret = AVERROR_INVALIDDATA;
            goto fail;
        }
        pkt->data[0] |= C93_HAS_PALETTE;
        ret = avio_read(pb, pkt->data + pkt->size, datasize);
        if (ret < datasize) {
            ret = AVERROR(EIO);
            goto fail;
        }
        pkt->size += 768;
    }
    pkt->stream_index = 0;
    c93->next_pkt_is_audio = 1;


    if (c93->current_block == 0 && c93->current_frame == 0) {
        pkt->flags |= AV_PKT_FLAG_KEY;
        pkt->data[0] |= C93_FIRST_FRAME;
    }
    return 0;

    fail:
    av_packet_unref(pkt);
    return ret;
}
