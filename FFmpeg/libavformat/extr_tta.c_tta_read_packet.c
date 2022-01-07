
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int pb; TYPE_3__** streams; TYPE_2__* priv_data; } ;
struct TYPE_13__ {int duration; int dts; } ;
struct TYPE_12__ {size_t nb_index_entries; TYPE_1__* index_entries; } ;
struct TYPE_11__ {size_t currentframe; size_t totalframes; int frame_size; int last_frame_size; } ;
struct TYPE_10__ {int size; int timestamp; } ;
typedef TYPE_2__ TTAContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_get_packet (int ,TYPE_4__*,int) ;
 int av_log (TYPE_5__*,int ,char*) ;

__attribute__((used)) static int tta_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    TTAContext *c = s->priv_data;
    AVStream *st = s->streams[0];
    int size, ret;


    if (c->currentframe >= c->totalframes)
        return AVERROR_EOF;

    if (st->nb_index_entries < c->totalframes) {
        av_log(s, AV_LOG_ERROR, "Index entry disappeared\n");
        return AVERROR_INVALIDDATA;
    }

    size = st->index_entries[c->currentframe].size;

    ret = av_get_packet(s->pb, pkt, size);
    pkt->dts = st->index_entries[c->currentframe++].timestamp;
    pkt->duration = c->currentframe == c->totalframes ? c->last_frame_size :
                                                        c->frame_size;
    return ret;
}
