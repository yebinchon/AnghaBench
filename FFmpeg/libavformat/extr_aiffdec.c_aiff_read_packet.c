
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_14__ {scalar_t__ data_end; int block_duration; } ;
struct TYPE_13__ {int pb; TYPE_5__* priv_data; TYPE_2__** streams; } ;
struct TYPE_12__ {int duration; scalar_t__ stream_index; int flags; } ;
struct TYPE_11__ {TYPE_1__* codecpar; } ;
struct TYPE_10__ {int block_align; int codec_id; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVFormatContext ;
typedef TYPE_5__ AIFFInputContext ;


 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;




 int AV_LOG_ERROR ;
 int AV_PKT_FLAG_CORRUPT ;
 int FFMIN (scalar_t__,int) ;
 int MAX_SIZE ;
 int av_get_packet (int ,TYPE_3__*,int) ;
 int av_log (TYPE_4__*,int ,char*) ;
 scalar_t__ avio_tell (int ) ;

__attribute__((used)) static int aiff_read_packet(AVFormatContext *s,
                            AVPacket *pkt)
{
    AVStream *st = s->streams[0];
    AIFFInputContext *aiff = s->priv_data;
    int64_t max_size;
    int res, size;


    max_size = aiff->data_end - avio_tell(s->pb);
    if (max_size <= 0)
        return AVERROR_EOF;

    if (!st->codecpar->block_align) {
        av_log(s, AV_LOG_ERROR, "block_align not set\n");
        return AVERROR_INVALIDDATA;
    }


    switch (st->codecpar->codec_id) {
    case 131:
    case 130:
    case 128:
    case 129:
        size = st->codecpar->block_align;
        break;
    default:
        size = st->codecpar->block_align ? (MAX_SIZE / st->codecpar->block_align) * st->codecpar->block_align : MAX_SIZE;
    }
    size = FFMIN(max_size, size);
    res = av_get_packet(s->pb, pkt, size);
    if (res < 0)
        return res;

    if (size >= st->codecpar->block_align)
        pkt->flags &= ~AV_PKT_FLAG_CORRUPT;

    pkt->stream_index = 0;
    pkt->duration = (res / st->codecpar->block_align) * aiff->block_duration;
    return 0;
}
