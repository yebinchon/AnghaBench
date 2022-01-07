
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int size; int * data; } ;
typedef TYPE_1__ AVPacket ;


 int av_init_packet (TYPE_1__*) ;

__attribute__((used)) static void new_data_packet(const uint8_t *buffer, int len, AVPacket *pkt)
{
    av_init_packet(pkt);
    pkt->data = (uint8_t *)buffer;
    pkt->size = len;
}
