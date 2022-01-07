
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int allocated; int first_bucket; int * queue; } ;
typedef int FFFrameQueueGlobal ;
typedef TYPE_1__ FFFrameQueue ;



void ff_framequeue_init(FFFrameQueue *fq, FFFrameQueueGlobal *fqg)
{
    fq->queue = &fq->first_bucket;
    fq->allocated = 1;
}
