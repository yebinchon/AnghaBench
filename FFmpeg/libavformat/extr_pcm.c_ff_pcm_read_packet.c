
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int block_align; int sample_rate; } ;
struct TYPE_10__ {int pb; TYPE_1__** streams; } ;
struct TYPE_9__ {scalar_t__ stream_index; int flags; } ;
struct TYPE_8__ {TYPE_4__* codecpar; } ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVCodecParameters ;


 int AVERROR (int ) ;
 int AV_PKT_FLAG_CORRUPT ;
 int EINVAL ;
 int FFMAX (int,int) ;
 int FFMIN (int,int ) ;
 int RAW_SAMPLES ;
 int av_get_packet (int ,TYPE_2__*,int) ;

int ff_pcm_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    AVCodecParameters *par = s->streams[0]->codecpar;
    int ret, size;

    if (par->block_align <= 0)
        return AVERROR(EINVAL);





    size = FFMAX(par->sample_rate/25, 1);
    size = FFMIN(size, RAW_SAMPLES) * par->block_align;

    ret = av_get_packet(s->pb, pkt, size);

    pkt->flags &= ~AV_PKT_FLAG_CORRUPT;
    pkt->stream_index = 0;

    return ret;
}
