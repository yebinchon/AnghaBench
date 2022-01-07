
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t tail; int allocated; int * queue; } ;
typedef TYPE_1__ FFFrameQueue ;
typedef int FFFrameBucket ;



__attribute__((used)) static inline FFFrameBucket *bucket(FFFrameQueue *fq, size_t idx)
{
    return &fq->queue[(fq->tail + idx) & (fq->allocated - 1)];
}
