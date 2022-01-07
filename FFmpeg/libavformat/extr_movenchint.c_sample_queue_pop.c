
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int data; scalar_t__ own_data; } ;
struct TYPE_5__ {int len; TYPE_3__* samples; } ;
typedef TYPE_1__ HintSampleQueue ;
typedef int HintSample ;


 int av_freep (int *) ;
 int memmove (TYPE_3__*,TYPE_3__*,int) ;

__attribute__((used)) static void sample_queue_pop(HintSampleQueue *queue)
{
    if (queue->len <= 0)
        return;
    if (queue->samples[0].own_data)
        av_freep(&queue->samples[0].data);
    queue->len--;
    memmove(queue->samples, queue->samples + 1, sizeof(HintSample)*queue->len);
}
