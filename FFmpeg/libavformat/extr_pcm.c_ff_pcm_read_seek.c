
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_11__ {TYPE_3__* internal; int pb; TYPE_4__** streams; } ;
struct TYPE_8__ {int den; scalar_t__ num; } ;
struct TYPE_10__ {TYPE_2__ time_base; int cur_dts; TYPE_1__* codecpar; } ;
struct TYPE_9__ {scalar_t__ data_offset; } ;
struct TYPE_7__ {int block_align; int channels; int bit_rate; int sample_rate; int codec_id; } ;
typedef TYPE_4__ AVStream ;
typedef TYPE_5__ AVFormatContext ;


 int AVSEEK_FLAG_BACKWARD ;
 int AV_ROUND_DOWN ;
 int AV_ROUND_UP ;
 int SEEK_SET ;
 int av_get_bits_per_sample (int ) ;
 int av_rescale (int,int,int) ;
 int av_rescale_rnd (int,scalar_t__,int,int ) ;
 int avio_seek (int ,scalar_t__,int ) ;

int ff_pcm_read_seek(AVFormatContext *s,
                     int stream_index, int64_t timestamp, int flags)
{
    AVStream *st;
    int block_align, byte_rate;
    int64_t pos, ret;

    st = s->streams[0];

    block_align = st->codecpar->block_align ? st->codecpar->block_align :
        (av_get_bits_per_sample(st->codecpar->codec_id) * st->codecpar->channels) >> 3;
    byte_rate = st->codecpar->bit_rate ? st->codecpar->bit_rate >> 3 :
        block_align * st->codecpar->sample_rate;

    if (block_align <= 0 || byte_rate <= 0)
        return -1;
    if (timestamp < 0) timestamp = 0;


    pos = av_rescale_rnd(timestamp * byte_rate,
                         st->time_base.num,
                         st->time_base.den * (int64_t)block_align,
                         (flags & AVSEEK_FLAG_BACKWARD) ? AV_ROUND_DOWN : AV_ROUND_UP);
    pos *= block_align;


    st->cur_dts = av_rescale(pos, st->time_base.den, byte_rate * (int64_t)st->time_base.num);
    if ((ret = avio_seek(s->pb, pos + s->internal->data_offset, SEEK_SET)) < 0)
        return ret;
    return 0;
}
