
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVPacket ;


 int ff_alloc_packet2 (int *,int *,int,int ) ;

int ff_alloc_packet(AVPacket *avpkt, int size)
{
    return ff_alloc_packet2(((void*)0), avpkt, size, 0);
}
