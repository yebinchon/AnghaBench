
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int header_size; } ;
struct TYPE_14__ {int channels; } ;
struct TYPE_13__ {int pb; TYPE_1__** streams; TYPE_5__* priv_data; } ;
struct TYPE_12__ {int pos; int size; int duration; int pts; int data; scalar_t__ stream_index; } ;
struct TYPE_11__ {TYPE_4__* codecpar; } ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVCodecParameters ;
typedef TYPE_5__ ADXDemuxerContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_RB16 (int ) ;
 int BLOCK_SIZE ;
 int EIO ;
 int av_get_packet (int ,TYPE_2__*,int) ;
 int av_log (TYPE_3__*,int ,char*,int) ;
 int av_packet_unref (TYPE_2__*) ;
 int avio_tell (int ) ;

__attribute__((used)) static int adx_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    ADXDemuxerContext *c = s->priv_data;
    AVCodecParameters *par = s->streams[0]->codecpar;
    int ret, size;

    if (par->channels <= 0) {
        av_log(s, AV_LOG_ERROR, "invalid number of channels %d\n", par->channels);
        return AVERROR_INVALIDDATA;
    }

    size = BLOCK_SIZE * par->channels;

    pkt->pos = avio_tell(s->pb);
    pkt->stream_index = 0;

    ret = av_get_packet(s->pb, pkt, size);
    if (ret != size) {
        av_packet_unref(pkt);
        return ret < 0 ? ret : AVERROR(EIO);
    }
    if (AV_RB16(pkt->data) & 0x8000) {
        av_packet_unref(pkt);
        return AVERROR_EOF;
    }
    pkt->size = size;
    pkt->duration = 1;
    pkt->pts = (pkt->pos - c->header_size) / size;

    return 0;
}
