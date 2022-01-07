
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_6__ {int * pb; } ;
struct TYPE_5__ {int pts; int duration; int index; int size; int keyframe; scalar_t__ audio; } ;
typedef TYPE_1__ FILMPacket ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int avio_wb32 (int *,int) ;

__attribute__((used)) static int film_write_packet_to_header(AVFormatContext *format_context, FILMPacket *pkt)
{
    AVIOContext *pb = format_context->pb;

    int32_t info1 = 0;
    int32_t info2 = 0;

    if (pkt->audio) {

        info1 = 0xFFFFFFFF;
        info2 = 1;
    } else {
        info1 = pkt->pts;
        info2 = pkt->duration;

        if (!pkt->keyframe)
            info1 |= (1 << 31);
    }


    avio_wb32(pb, pkt->index);
    avio_wb32(pb, pkt->size);
    avio_wb32(pb, info1);
    avio_wb32(pb, info2);

    return 0;
}
