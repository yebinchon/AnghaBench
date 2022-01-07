
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_13__ {int pb; TYPE_3__** streams; TYPE_2__* priv_data; } ;
struct TYPE_12__ {int dts; int size; int flags; } ;
struct TYPE_11__ {TYPE_1__* codecpar; } ;
struct TYPE_10__ {scalar_t__ leading; } ;
struct TYPE_9__ {int width; int height; } ;
typedef TYPE_2__ FilmstripDemuxContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_PKT_FLAG_KEY ;
 int EIO ;
 int av_get_packet (int ,TYPE_4__*,int) ;
 scalar_t__ avio_feof (int ) ;
 int avio_skip (int ,int) ;
 int avio_tell (int ) ;

__attribute__((used)) static int read_packet(AVFormatContext *s,
                       AVPacket *pkt)
{
    FilmstripDemuxContext *film = s->priv_data;
    AVStream *st = s->streams[0];

    if (avio_feof(s->pb))
        return AVERROR(EIO);
    pkt->dts = avio_tell(s->pb) / (st->codecpar->width * (int64_t)(st->codecpar->height + film->leading) * 4);
    pkt->size = av_get_packet(s->pb, pkt, st->codecpar->width * st->codecpar->height * 4);
    avio_skip(s->pb, st->codecpar->width * (int64_t) film->leading * 4);
    if (pkt->size < 0)
        return pkt->size;
    pkt->flags |= AV_PKT_FLAG_KEY;
    return 0;
}
