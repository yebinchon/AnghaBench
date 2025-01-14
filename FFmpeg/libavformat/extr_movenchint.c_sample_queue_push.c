
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int size; int sample_number; scalar_t__ own_data; scalar_t__ offset; int * data; } ;
struct TYPE_6__ {size_t len; size_t size; TYPE_2__* samples; } ;
typedef TYPE_1__ HintSampleQueue ;
typedef TYPE_2__ HintSample ;


 TYPE_2__* av_realloc_array (TYPE_2__*,size_t,int) ;

__attribute__((used)) static void sample_queue_push(HintSampleQueue *queue, uint8_t *data, int size,
                              int sample)
{


    if (size <= 14)
        return;
    if (!queue->samples || queue->len >= queue->size) {
        HintSample *samples;
        samples = av_realloc_array(queue->samples, queue->size + 10, sizeof(HintSample));
        if (!samples)
            return;
        queue->size += 10;
        queue->samples = samples;
    }
    queue->samples[queue->len].data = data;
    queue->samples[queue->len].size = size;
    queue->samples[queue->len].sample_number = sample;
    queue->samples[queue->len].offset = 0;
    queue->samples[queue->len].own_data = 0;
    queue->len++;
}
