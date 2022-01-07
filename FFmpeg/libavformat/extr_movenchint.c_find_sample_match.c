
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int offset; int size; int sample_number; int data; } ;
struct TYPE_5__ {scalar_t__ len; TYPE_2__* samples; } ;
typedef TYPE_1__ HintSampleQueue ;
typedef TYPE_2__ HintSample ;


 scalar_t__ match_segments (int const*,int,int ,int,int,int*,int*,int*) ;
 int sample_queue_pop (TYPE_1__*) ;

__attribute__((used)) static int find_sample_match(const uint8_t *data, int len,
                             HintSampleQueue *queue, int *pos,
                             int *match_sample, int *match_offset,
                             int *match_len)
{
    while (queue->len > 0) {
        HintSample *sample = &queue->samples[0];


        if (sample->offset == 0 && sample->size > 5)
            sample->offset = 5;

        if (match_segments(data, len, sample->data, sample->offset,
                           sample->size, pos, match_offset, match_len) == 0) {
            *match_sample = sample->sample_number;


            sample->offset = *match_offset + *match_len + 5;
            if (sample->offset + 10 >= sample->size)
                sample_queue_pop(queue);
            return 0;
        }

        if (sample->offset < 10 && sample->size > 20) {


            sample->offset = sample->size/2;
        } else {

            sample_queue_pop(queue);
        }
    }
    return -1;
}
