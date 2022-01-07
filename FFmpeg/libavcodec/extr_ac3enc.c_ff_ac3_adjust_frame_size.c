
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bits_written; int bit_rate; int samples_written; int sample_rate; int frame_size; int frame_size_min; int num_blocks; } ;
typedef TYPE_1__ AC3EncodeContext ;


 int AC3_BLOCK_SIZE ;

void ff_ac3_adjust_frame_size(AC3EncodeContext *s)
{
    while (s->bits_written >= s->bit_rate && s->samples_written >= s->sample_rate) {
        s->bits_written -= s->bit_rate;
        s->samples_written -= s->sample_rate;
    }
    s->frame_size = s->frame_size_min +
                    2 * (s->bits_written * s->sample_rate < s->samples_written * s->bit_rate);
    s->bits_written += s->frame_size * 8;
    s->samples_written += AC3_BLOCK_SIZE * s->num_blocks;
}
