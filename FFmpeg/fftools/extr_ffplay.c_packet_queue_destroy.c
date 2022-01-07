
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cond; int mutex; } ;
typedef TYPE_1__ PacketQueue ;


 int SDL_DestroyCond (int ) ;
 int SDL_DestroyMutex (int ) ;
 int packet_queue_flush (TYPE_1__*) ;

__attribute__((used)) static void packet_queue_destroy(PacketQueue *q)
{
    packet_queue_flush(q);
    SDL_DestroyMutex(q->mutex);
    SDL_DestroyCond(q->cond);
}
