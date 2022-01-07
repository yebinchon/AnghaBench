
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int * pb; TYPE_2__* priv_data; } ;
struct TYPE_11__ {scalar_t__ start_time; TYPE_1__* codecpar; } ;
struct TYPE_10__ {void* out_size; } ;
struct TYPE_9__ {long long channels; long long sample_rate; int bit_rate; int codec_id; int codec_type; } ;
typedef TYPE_2__ MaxisXADemuxContext ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CODEC_ID_ADPCM_EA_MAXIS_XA ;
 int ENOMEM ;
 int INT_MAX ;
 int av_clip (long long,int ,int ) ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;
 long long avio_rl16 (int *) ;
 void* avio_rl32 (int *) ;
 int avio_skip (int *,int) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,long long) ;

__attribute__((used)) static int xa_read_header(AVFormatContext *s)
{
    MaxisXADemuxContext *xa = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *st;


    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = AV_CODEC_ID_ADPCM_EA_MAXIS_XA;
    avio_skip(pb, 4);
    xa->out_size = avio_rl32(pb);
    avio_skip(pb, 2);
    st->codecpar->channels = avio_rl16(pb);
    st->codecpar->sample_rate = avio_rl32(pb);
    avio_skip(pb, 4);
    avio_skip(pb, 2);
    avio_skip(pb, 2);

    if (!st->codecpar->channels || !st->codecpar->sample_rate)
        return AVERROR_INVALIDDATA;

    st->codecpar->bit_rate = av_clip(15LL * st->codecpar->channels * 8 *
                                  st->codecpar->sample_rate / 28, 0, INT_MAX);

    avpriv_set_pts_info(st, 64, 1, st->codecpar->sample_rate);
    st->start_time = 0;

    return 0;
}
