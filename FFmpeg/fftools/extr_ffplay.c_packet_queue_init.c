
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int abort_request; int cond; int mutex; } ;
typedef TYPE_1__ PacketQueue ;


 int AVERROR (int ) ;
 int AV_LOG_FATAL ;
 int ENOMEM ;
 int SDL_CreateCond () ;
 int SDL_CreateMutex () ;
 int SDL_GetError () ;
 int av_log (int *,int ,char*,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int packet_queue_init(PacketQueue *q)
{
    memset(q, 0, sizeof(PacketQueue));
    q->mutex = SDL_CreateMutex();
    if (!q->mutex) {
        av_log(((void*)0), AV_LOG_FATAL, "SDL_CreateMutex(): %s\n", SDL_GetError());
        return AVERROR(ENOMEM);
    }
    q->cond = SDL_CreateCond();
    if (!q->cond) {
        av_log(((void*)0), AV_LOG_FATAL, "SDL_CreateCond(): %s\n", SDL_GetError());
        return AVERROR(ENOMEM);
    }
    q->abort_request = 1;
    return 0;
}
