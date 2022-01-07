
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int own_data; int * data; int size; } ;
struct TYPE_6__ {int len; TYPE_2__* samples; } ;
typedef TYPE_1__ HintSampleQueue ;
typedef TYPE_2__ HintSample ;


 int * av_malloc (int ) ;
 int memcpy (int *,int *,int ) ;
 int memmove (TYPE_2__*,TYPE_2__*,int) ;

__attribute__((used)) static void sample_queue_retain(HintSampleQueue *queue)
{
    int i;
    for (i = 0; i < queue->len; ) {
        HintSample *sample = &queue->samples[i];
        if (!sample->own_data) {
            uint8_t *ptr = av_malloc(sample->size);
            if (!ptr) {

                memmove(queue->samples + i, queue->samples + i + 1,
                        sizeof(HintSample)*(queue->len - i - 1));
                queue->len--;
                continue;
            }
            memcpy(ptr, sample->data, sample->size);
            sample->data = ptr;
            sample->own_data = 1;
        }
        i++;
    }
}
