
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; int * data; } ;
typedef TYPE_1__ AVPacket ;


 int av_init_packet (TYPE_1__*) ;

__attribute__((used)) static void init_packet(AVPacket *packet)
{
    av_init_packet(packet);

    packet->data = ((void*)0);
    packet->size = 0;
}
