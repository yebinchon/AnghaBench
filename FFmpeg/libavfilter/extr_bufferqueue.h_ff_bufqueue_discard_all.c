
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FFBufQueue {scalar_t__ available; } ;
typedef int AVFrame ;


 int av_frame_free (int **) ;
 int * ff_bufqueue_get (struct FFBufQueue*) ;

__attribute__((used)) static inline void ff_bufqueue_discard_all(struct FFBufQueue *queue)
{
    while (queue->available) {
        AVFrame *buf = ff_bufqueue_get(queue);
        av_frame_free(&buf);
    }
}
