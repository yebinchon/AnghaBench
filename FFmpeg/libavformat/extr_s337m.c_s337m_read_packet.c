
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint16_t ;
typedef int int64_t ;
typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_15__ {int nb_streams; int * pb; } ;
struct TYPE_14__ {int size; scalar_t__ data; int pos; } ;
struct TYPE_13__ {TYPE_1__* codecpar; } ;
struct TYPE_12__ {int codec_id; int codec_type; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVMEDIA_TYPE_AUDIO ;
 int ENOMEM ;
 scalar_t__ IS_16LE_MARKER (int) ;
 int IS_LE_MARKER (int) ;
 int av_new_packet (TYPE_3__*,int) ;
 int av_packet_unref (TYPE_3__*) ;
 TYPE_2__* avformat_new_stream (TYPE_4__*,int *) ;
 scalar_t__ avio_feof (int *) ;
 int avio_r8 (int *) ;
 int avio_read (int *,scalar_t__,int) ;
 int avio_rl16 (int *) ;
 int avio_rl24 (int *) ;
 int avio_tell (int *) ;
 int bswap_buf24 (scalar_t__,int) ;
 int ff_spdif_bswap_buf16 (int *,int *,int) ;
 int s337m_get_offset_and_codec (TYPE_4__*,int,int,int,int*,int*) ;

__attribute__((used)) static int s337m_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    AVIOContext *pb = s->pb;
    uint64_t state = 0;
    int ret, data_type, data_size, offset;
    enum AVCodecID codec;
    int64_t pos;

    while (!IS_LE_MARKER(state)) {
        state = (state << 8) | avio_r8(pb);
        if (avio_feof(pb))
            return AVERROR_EOF;
    }

    if (IS_16LE_MARKER(state)) {
        data_type = avio_rl16(pb);
        data_size = avio_rl16(pb);
    } else {
        data_type = avio_rl24(pb);
        data_size = avio_rl24(pb);
    }

    pos = avio_tell(pb);

    if ((ret = s337m_get_offset_and_codec(s, state, data_type, data_size, &offset, &codec)) < 0)
        return ret;

    if ((ret = av_new_packet(pkt, offset)) < 0)
        return ret;

    pkt->pos = pos;

    if (avio_read(pb, pkt->data, pkt->size) < pkt->size) {
        av_packet_unref(pkt);
        return AVERROR_EOF;
    }

    if (IS_16LE_MARKER(state))
        ff_spdif_bswap_buf16((uint16_t *)pkt->data, (uint16_t *)pkt->data, pkt->size >> 1);
    else
        bswap_buf24(pkt->data, pkt->size);

    if (!s->nb_streams) {
        AVStream *st = avformat_new_stream(s, ((void*)0));
        if (!st) {
            av_packet_unref(pkt);
            return AVERROR(ENOMEM);
        }
        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
        st->codecpar->codec_id = codec;
    }

    return 0;
}
