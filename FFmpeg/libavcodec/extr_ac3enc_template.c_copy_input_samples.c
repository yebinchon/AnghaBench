
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int channels; size_t num_blocks; size_t* channel_map; int ** planar_samples; } ;
typedef int SampleType ;
typedef TYPE_1__ AC3EncodeContext ;


 size_t AC3_BLOCK_SIZE ;
 int memcpy (int *,int *,size_t) ;

__attribute__((used)) static void copy_input_samples(AC3EncodeContext *s, SampleType **samples)
{
    int ch;


    for (ch = 0; ch < s->channels; ch++) {

        memcpy(&s->planar_samples[ch][0], &s->planar_samples[ch][AC3_BLOCK_SIZE * s->num_blocks],
               AC3_BLOCK_SIZE * sizeof(s->planar_samples[0][0]));


        memcpy(&s->planar_samples[ch][AC3_BLOCK_SIZE],
               samples[s->channel_map[ch]],
               AC3_BLOCK_SIZE * s->num_blocks * sizeof(s->planar_samples[0][0]));
    }
}
