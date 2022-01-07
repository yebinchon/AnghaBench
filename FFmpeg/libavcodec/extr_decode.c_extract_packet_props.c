
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int size; } ;
struct TYPE_9__ {TYPE_5__* last_pkt_props; } ;
struct TYPE_8__ {int size; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVCodecInternal ;


 int av_packet_copy_props (TYPE_5__*,TYPE_1__ const*) ;
 int av_packet_unref (TYPE_5__*) ;

__attribute__((used)) static int extract_packet_props(AVCodecInternal *avci, const AVPacket *pkt)
{
    int ret = 0;

    av_packet_unref(avci->last_pkt_props);
    if (pkt) {
        ret = av_packet_copy_props(avci->last_pkt_props, pkt);
        if (!ret)
            avci->last_pkt_props->size = pkt->size;
    }
    return ret;
}
