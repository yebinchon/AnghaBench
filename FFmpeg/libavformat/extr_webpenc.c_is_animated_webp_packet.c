
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; char* data; } ;
typedef TYPE_1__ AVPacket ;


 scalar_t__ AV_RL32 (char*) ;

__attribute__((used)) static int is_animated_webp_packet(AVPacket *pkt)
{
    if (pkt->size) {
        int skip = 0;
        unsigned flags = 0;

        if (pkt->size < 4)
            return 0;
        if (AV_RL32(pkt->data) == AV_RL32("RIFF"))
            skip = 12;

        if (pkt->size < skip + 4)
            return 0;
        if (AV_RL32(pkt->data + skip) == AV_RL32("VP8X")) {
            flags |= pkt->data[skip + 4 + 4];
        }

        if (flags & 2)
            return 1;
    }
    return 0;
}
