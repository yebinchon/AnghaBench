
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef enum IEC61937DataType { ____Placeholder_IEC61937DataType } IEC61937DataType ;
typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_21__ {int bit_rate; TYPE_3__** streams; int nb_streams; int * pb; } ;
struct TYPE_20__ {int pos; int size; scalar_t__ data; } ;
struct TYPE_19__ {TYPE_1__* codecpar; } ;
struct TYPE_18__ {TYPE_2__* codecpar; } ;
struct TYPE_17__ {int codec_id; int sample_rate; } ;
struct TYPE_16__ {int codec_id; int codec_type; } ;
typedef TYPE_4__ AVStream ;
typedef TYPE_5__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_6__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVERROR_PATCHWELCOME ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_BSWAP16C (int ) ;
 int BURST_HEADER_SIZE ;
 int ENOMEM ;
 int FFALIGN (int,int) ;
 int SYNCWORD1 ;
 int SYNCWORD2 ;
 int av_new_packet (TYPE_5__*,int) ;
 int av_packet_unref (TYPE_5__*) ;
 TYPE_4__* avformat_new_stream (TYPE_6__*,int *) ;
 scalar_t__ avio_feof (int *) ;
 int avio_r8 (int *) ;
 int avio_read (int *,scalar_t__,int) ;
 int avio_rl16 (int *) ;
 int avio_skip (int *,int) ;
 int avio_tell (int *) ;
 int avpriv_report_missing_feature (TYPE_6__*,char*) ;
 int avpriv_request_sample (TYPE_6__*,char*) ;
 int ff_spdif_bswap_buf16 (int *,int *,int) ;
 int spdif_get_offset_and_codec (TYPE_6__*,int,scalar_t__,int*,int*) ;

int ff_spdif_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    AVIOContext *pb = s->pb;
    enum IEC61937DataType data_type;
    enum AVCodecID codec_id;
    uint32_t state = 0;
    int pkt_size_bits, offset, ret;

    while (state != (AV_BSWAP16C(SYNCWORD1) << 16 | AV_BSWAP16C(SYNCWORD2))) {
        state = (state << 8) | avio_r8(pb);
        if (avio_feof(pb))
            return AVERROR_EOF;
    }

    data_type = avio_rl16(pb);
    pkt_size_bits = avio_rl16(pb);

    if (pkt_size_bits % 16)
        avpriv_request_sample(s, "Packet not ending at a 16-bit boundary");

    ret = av_new_packet(pkt, FFALIGN(pkt_size_bits, 16) >> 3);
    if (ret)
        return ret;

    pkt->pos = avio_tell(pb) - BURST_HEADER_SIZE;

    if (avio_read(pb, pkt->data, pkt->size) < pkt->size) {
        av_packet_unref(pkt);
        return AVERROR_EOF;
    }
    ff_spdif_bswap_buf16((uint16_t *)pkt->data, (uint16_t *)pkt->data, pkt->size >> 1);

    ret = spdif_get_offset_and_codec(s, data_type, pkt->data,
                                     &offset, &codec_id);
    if (ret) {
        av_packet_unref(pkt);
        return ret;
    }


    avio_skip(pb, offset - pkt->size - BURST_HEADER_SIZE);

    if (!s->nb_streams) {

        AVStream *st = avformat_new_stream(s, ((void*)0));
        if (!st) {
            av_packet_unref(pkt);
            return AVERROR(ENOMEM);
        }
        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
        st->codecpar->codec_id = codec_id;
    } else if (codec_id != s->streams[0]->codecpar->codec_id) {
        avpriv_report_missing_feature(s, "Codec change in IEC 61937");
        return AVERROR_PATCHWELCOME;
    }

    if (!s->bit_rate && s->streams[0]->codecpar->sample_rate)


        s->bit_rate = 2 * 16 * s->streams[0]->codecpar->sample_rate;

    return 0;
}
