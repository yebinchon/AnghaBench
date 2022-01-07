
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; size_t rindex_shown; size_t rindex; size_t max_size; int * queue; TYPE_1__* pktq; int mutex; int cond; } ;
struct TYPE_4__ {scalar_t__ abort_request; } ;
typedef TYPE_2__ FrameQueue ;
typedef int Frame ;


 int SDL_CondWait (int ,int ) ;
 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;

__attribute__((used)) static Frame *frame_queue_peek_readable(FrameQueue *f)
{

    SDL_LockMutex(f->mutex);
    while (f->size - f->rindex_shown <= 0 &&
           !f->pktq->abort_request) {
        SDL_CondWait(f->cond, f->mutex);
    }
    SDL_UnlockMutex(f->mutex);

    if (f->pktq->abort_request)
        return ((void*)0);

    return &f->queue[(f->rindex + f->rindex_shown) % f->max_size];
}
