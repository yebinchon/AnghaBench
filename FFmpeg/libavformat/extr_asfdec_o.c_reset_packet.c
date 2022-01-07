
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int avpkt; scalar_t__ duration; scalar_t__ dts; scalar_t__ flags; scalar_t__ data_size; scalar_t__ size_left; } ;
typedef TYPE_1__ ASFPacket ;


 int av_init_packet (int *) ;
 int av_packet_unref (int *) ;

__attribute__((used)) static void reset_packet(ASFPacket *asf_pkt)
{
    asf_pkt->size_left = 0;
    asf_pkt->data_size = 0;
    asf_pkt->duration = 0;
    asf_pkt->flags = 0;
    asf_pkt->dts = 0;
    asf_pkt->duration = 0;
    av_packet_unref(&asf_pkt->avpkt);
    av_init_packet(&asf_pkt->avpkt);
}
