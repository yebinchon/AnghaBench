
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rindex_shown; size_t rindex; size_t max_size; int mutex; int cond; int size; int * queue; scalar_t__ keep_last; } ;
typedef TYPE_1__ FrameQueue ;


 int SDL_CondSignal (int ) ;
 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;
 int frame_queue_unref_item (int *) ;

__attribute__((used)) static void frame_queue_next(FrameQueue *f)
{
    if (f->keep_last && !f->rindex_shown) {
        f->rindex_shown = 1;
        return;
    }
    frame_queue_unref_item(&f->queue[f->rindex]);
    if (++f->rindex == f->max_size)
        f->rindex = 0;
    SDL_LockMutex(f->mutex);
    f->size--;
    SDL_CondSignal(f->cond);
    SDL_UnlockMutex(f->mutex);
}
