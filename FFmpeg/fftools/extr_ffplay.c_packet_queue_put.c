
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
typedef TYPE_1__ PacketQueue ;
typedef int AVPacket ;


 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;
 int av_packet_unref (int *) ;
 int flush_pkt ;
 int packet_queue_put_private (TYPE_1__*,int *) ;

__attribute__((used)) static int packet_queue_put(PacketQueue *q, AVPacket *pkt)
{
    int ret;

    SDL_LockMutex(q->mutex);
    ret = packet_queue_put_private(q, pkt);
    SDL_UnlockMutex(q->mutex);

    if (pkt != &flush_pkt && ret < 0)
        av_packet_unref(pkt);

    return ret;
}
