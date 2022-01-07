
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FFBufQueue {size_t head; int ** queue; int available; } ;
typedef int AVFrame ;


 int FF_BUFQUEUE_SIZE ;
 int av_assert0 (int ) ;

__attribute__((used)) static inline AVFrame *ff_bufqueue_get(struct FFBufQueue *queue)
{
    AVFrame *ret = queue->queue[queue->head];
    av_assert0(queue->available);
    queue->available--;
    queue->queue[queue->head] = ((void*)0);
    queue->head = (queue->head + 1) % FF_BUFQUEUE_SIZE;
    return ret;
}
