
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ packet_size_left; int packet_segments; scalar_t__ packet_time_start; } ;
struct TYPE_6__ {int pb; TYPE_2__* priv_data; } ;
typedef int AVPacket ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ ASFContext ;


 scalar_t__ FRAME_HEADER_SIZE ;
 int asf_get_packet (TYPE_1__*,int ) ;
 int asf_parse_packet (TYPE_1__*,int ,int *) ;
 int assert (int) ;

__attribute__((used)) static int asf_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    ASFContext *asf = s->priv_data;

    for (;;) {
        int ret;


        if ((ret = asf_parse_packet(s, s->pb, pkt)) <= 0)
            return ret;
        if ((ret = asf_get_packet(s, s->pb)) < 0)
            assert(asf->packet_size_left < FRAME_HEADER_SIZE ||
                   asf->packet_segments < 1);
        asf->packet_time_start = 0;
    }
}
