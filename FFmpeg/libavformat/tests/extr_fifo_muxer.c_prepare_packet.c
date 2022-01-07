
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_4__ {int duration; int dts; int pts; } ;
typedef int FailingMuxerPacketData ;
typedef TYPE_1__ AVPacket ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int * av_malloc (int) ;
 int av_packet_from_data (TYPE_1__*,int *,int) ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static int prepare_packet(AVPacket *pkt, const FailingMuxerPacketData *pkt_data, int64_t pts)
{
    int ret;
    FailingMuxerPacketData *data = av_malloc(sizeof(*data));
    if (!data) {
        return AVERROR(ENOMEM);
    }
    memcpy(data, pkt_data, sizeof(FailingMuxerPacketData));
    ret = av_packet_from_data(pkt, (uint8_t*) data, sizeof(*data));

    pkt->pts = pkt->dts = pts;
    pkt->duration = 1;

    return ret;
}
