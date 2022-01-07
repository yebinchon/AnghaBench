
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ windex; scalar_t__ max_size; int mutex; int cond; int size; } ;
typedef TYPE_1__ FrameQueue ;


 int SDL_CondSignal (int ) ;
 int SDL_LockMutex (int ) ;
 int SDL_UnlockMutex (int ) ;

__attribute__((used)) static void frame_queue_push(FrameQueue *f)
{
    if (++f->windex == f->max_size)
        f->windex = 0;
    SDL_LockMutex(f->mutex);
    f->size++;
    SDL_CondSignal(f->cond);
    SDL_UnlockMutex(f->mutex);
}
