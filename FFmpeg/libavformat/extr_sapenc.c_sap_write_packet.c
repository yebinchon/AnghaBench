
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct SAPState {int last_time; int ann_size; int ann; int ann_fd; } ;
typedef int int64_t ;
struct TYPE_11__ {TYPE_1__** streams; struct SAPState* priv_data; } ;
struct TYPE_10__ {size_t stream_index; } ;
struct TYPE_9__ {TYPE_3__* priv_data; } ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int ECONNREFUSED ;
 int av_gettime_relative () ;
 int ff_write_chained (TYPE_3__*,int ,TYPE_2__*,TYPE_3__*,int ) ;
 int ffurl_write (int ,int ,int ) ;

__attribute__((used)) static int sap_write_packet(AVFormatContext *s, AVPacket *pkt)
{
    AVFormatContext *rtpctx;
    struct SAPState *sap = s->priv_data;
    int64_t now = av_gettime_relative();

    if (!sap->last_time || now - sap->last_time > 5000000) {
        int ret = ffurl_write(sap->ann_fd, sap->ann, sap->ann_size);

        if (ret < 0 && ret != AVERROR(ECONNREFUSED))
            return ret;
        sap->last_time = now;
    }
    rtpctx = s->streams[pkt->stream_index]->priv_data;
    return ff_write_chained(rtpctx, 0, pkt, s, 0);
}
