
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int max_size; int keep_last; TYPE_1__* queue; int * pktq; int cond; int mutex; } ;
struct TYPE_5__ {int frame; } ;
typedef int PacketQueue ;
typedef TYPE_2__ FrameQueue ;


 int AVERROR (int ) ;
 int AV_LOG_FATAL ;
 int ENOMEM ;
 int FFMIN (int,int ) ;
 int FRAME_QUEUE_SIZE ;
 int SDL_CreateCond () ;
 int SDL_CreateMutex () ;
 int SDL_GetError () ;
 int av_frame_alloc () ;
 int av_log (int *,int ,char*,int ) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static int frame_queue_init(FrameQueue *f, PacketQueue *pktq, int max_size, int keep_last)
{
    int i;
    memset(f, 0, sizeof(FrameQueue));
    if (!(f->mutex = SDL_CreateMutex())) {
        av_log(((void*)0), AV_LOG_FATAL, "SDL_CreateMutex(): %s\n", SDL_GetError());
        return AVERROR(ENOMEM);
    }
    if (!(f->cond = SDL_CreateCond())) {
        av_log(((void*)0), AV_LOG_FATAL, "SDL_CreateCond(): %s\n", SDL_GetError());
        return AVERROR(ENOMEM);
    }
    f->pktq = pktq;
    f->max_size = FFMIN(max_size, FRAME_QUEUE_SIZE);
    f->keep_last = !!keep_last;
    for (i = 0; i < f->max_size; i++)
        if (!(f->queue[i].frame = av_frame_alloc()))
            return AVERROR(ENOMEM);
    return 0;
}
