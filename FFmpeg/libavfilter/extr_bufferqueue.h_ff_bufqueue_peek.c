
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FFBufQueue {unsigned int available; } ;
typedef int AVFrame ;


 int * BUCKET (unsigned int) ;

__attribute__((used)) static inline AVFrame *ff_bufqueue_peek(struct FFBufQueue *queue,
                                        unsigned index)
{
    return index < queue->available ? BUCKET(index) : ((void*)0);
}
