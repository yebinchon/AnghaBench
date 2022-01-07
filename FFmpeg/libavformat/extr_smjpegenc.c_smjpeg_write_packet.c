
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ codec_type; } ;
struct TYPE_11__ {TYPE_2__** streams; int * pb; TYPE_1__* priv_data; } ;
struct TYPE_10__ {size_t stream_index; scalar_t__ duration; scalar_t__ pts; scalar_t__ size; int data; } ;
struct TYPE_9__ {TYPE_5__* codecpar; } ;
struct TYPE_8__ {int duration; } ;
typedef TYPE_1__ SMJPEGMuxContext ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;
typedef TYPE_5__ AVCodecParameters ;


 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int FFMAX (int ,scalar_t__) ;
 int SMJPEG_SNDD ;
 int SMJPEG_VIDD ;
 int avio_wb32 (int *,scalar_t__) ;
 int avio_wl32 (int *,int ) ;
 int avio_write (int *,int ,scalar_t__) ;

__attribute__((used)) static int smjpeg_write_packet(AVFormatContext *s, AVPacket *pkt)
{
    SMJPEGMuxContext *smc = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *st = s->streams[pkt->stream_index];
    AVCodecParameters *par = st->codecpar;

    if (par->codec_type == AVMEDIA_TYPE_AUDIO)
        avio_wl32(pb, SMJPEG_SNDD);
    else if (par->codec_type == AVMEDIA_TYPE_VIDEO)
        avio_wl32(pb, SMJPEG_VIDD);
    else
        return 0;

    avio_wb32(pb, pkt->pts);
    avio_wb32(pb, pkt->size);
    avio_write(pb, pkt->data, pkt->size);

    smc->duration = FFMAX(smc->duration, pkt->pts + pkt->duration);
    return 0;
}
