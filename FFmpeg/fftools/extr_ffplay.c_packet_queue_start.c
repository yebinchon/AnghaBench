
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; scalar_t__ abort_request; } ;
typedef TYPE_1__ PacketQueue ;


 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;
 int flush_pkt ;
 int packet_queue_put_private (TYPE_1__*,int *) ;

__attribute__((used)) static void packet_queue_start(PacketQueue *q)
{
    SDL_LockMutex(q->mutex);
    q->abort_request = 0;
    packet_queue_put_private(q, &flush_pkt);
    SDL_UnlockMutex(q->mutex);
}
