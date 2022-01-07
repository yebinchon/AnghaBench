
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FFBufQueue {scalar_t__ available; } ;


 scalar_t__ FF_BUFQUEUE_SIZE ;

__attribute__((used)) static inline int ff_bufqueue_is_full(struct FFBufQueue *queue)
{
    return queue->available == FF_BUFQUEUE_SIZE;
}
