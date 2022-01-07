
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_3__ {int prev_sample; size_t step_index; } ;
typedef TYPE_1__ ADPCMChannelStatus ;


 int FFMIN (int,int) ;
 int abs (int) ;
 size_t av_clip (size_t,int ,int) ;
 int av_clip_int16 (int) ;
 size_t* ff_adpcm_index_table ;
 int* ff_adpcm_step_table ;
 int* ff_adpcm_yamaha_difflookup ;

__attribute__((used)) static inline uint8_t adpcm_ima_compress_sample(ADPCMChannelStatus *c,
                                                int16_t sample)
{
    int delta = sample - c->prev_sample;
    int nibble = FFMIN(7, abs(delta) * 4 /
                       ff_adpcm_step_table[c->step_index]) + (delta < 0) * 8;
    c->prev_sample += ((ff_adpcm_step_table[c->step_index] *
                        ff_adpcm_yamaha_difflookup[nibble]) / 8);
    c->prev_sample = av_clip_int16(c->prev_sample);
    c->step_index = av_clip(c->step_index + ff_adpcm_index_table[nibble], 0, 88);
    return nibble;
}
