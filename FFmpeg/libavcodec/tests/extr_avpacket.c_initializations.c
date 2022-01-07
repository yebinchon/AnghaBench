
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_5__ {int pts; int dts; char* data; int duration; int pos; int flags; int size; } ;
typedef TYPE_1__ AVPacket ;


 int AV_PKT_FLAG_DISCARD ;
 int av_init_packet (TYPE_1__*) ;
 int setup_side_data_entry (TYPE_1__*) ;
 int strlen (char const*) ;

__attribute__((used)) static int initializations(AVPacket* avpkt)
{
    const static uint8_t* data = "selftest for av_packet_clone(...)";
    int ret = 0;


    av_init_packet(avpkt);


    avpkt->pts = 17;
    avpkt->dts = 2;
    avpkt->data = (uint8_t*)data;
    avpkt->size = strlen(data);
    avpkt->flags = AV_PKT_FLAG_DISCARD;
    avpkt->duration = 100;
    avpkt->pos = 3;

    ret = setup_side_data_entry(avpkt);

    return ret;
}
