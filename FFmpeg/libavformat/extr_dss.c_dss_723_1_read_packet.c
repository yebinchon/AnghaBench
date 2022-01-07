
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_16__ {long long bit_rate; int pb; TYPE_3__** streams; TYPE_2__* priv_data; } ;
struct TYPE_15__ {int* data; int duration; int size; scalar_t__ stream_index; int pos; } ;
struct TYPE_14__ {TYPE_1__* codecpar; } ;
struct TYPE_13__ {int counter; int packet_size; } ;
struct TYPE_12__ {long long sample_rate; } ;
typedef TYPE_2__ DSSDemuxContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 int av_new_packet (TYPE_4__*,int) ;
 int av_packet_unref (TYPE_4__*) ;
 int avio_r8 (int ) ;
 int avio_read (int ,int*,int) ;
 int avio_tell (int ) ;
 int dss_skip_audio_header (TYPE_5__*,TYPE_4__*) ;
 int* frame_size ;

__attribute__((used)) static int dss_723_1_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    DSSDemuxContext *ctx = s->priv_data;
    AVStream *st = s->streams[0];
    int size, byte, ret, offset;
    int64_t pos = avio_tell(s->pb);

    if (ctx->counter == 0)
        dss_skip_audio_header(s, pkt);


    byte = avio_r8(s->pb);
    if (byte == 0xff)
        return AVERROR_INVALIDDATA;

    size = frame_size[byte & 3];

    ctx->packet_size = size;
    ctx->counter -= size;

    ret = av_new_packet(pkt, size);
    if (ret < 0)
        return ret;
    pkt->pos = pos;

    pkt->data[0] = byte;
    offset = 1;
    pkt->duration = 240;
    s->bit_rate = 8LL * size * st->codecpar->sample_rate * 512 / (506 * pkt->duration);

    pkt->stream_index = 0;

    if (ctx->counter < 0) {
        int size2 = ctx->counter + size;

        ret = avio_read(s->pb, pkt->data + offset,
                        size2 - offset);
        if (ret < size2 - offset) {
            av_packet_unref(pkt);
            return ret < 0 ? ret : AVERROR_EOF;
        }

        dss_skip_audio_header(s, pkt);
        offset = size2;
    }

    ret = avio_read(s->pb, pkt->data + offset, size - offset);
    if (ret < size - offset) {
        av_packet_unref(pkt);
        return ret < 0 ? ret : AVERROR_EOF;
    }

    return pkt->size;
}
