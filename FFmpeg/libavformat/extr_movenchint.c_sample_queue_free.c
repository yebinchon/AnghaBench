
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* data; scalar_t__ own_data; } ;
struct TYPE_4__ {int len; scalar_t__ size; TYPE_3__* samples; } ;
typedef TYPE_1__ HintSampleQueue ;


 int av_freep (TYPE_3__**) ;

__attribute__((used)) static void sample_queue_free(HintSampleQueue *queue)
{
    int i;
    for (i = 0; i < queue->len; i++)
        if (queue->samples[i].own_data)
            av_freep(&queue->samples[i].data);
    av_freep(&queue->samples);
    queue->len = 0;
    queue->size = 0;
}
