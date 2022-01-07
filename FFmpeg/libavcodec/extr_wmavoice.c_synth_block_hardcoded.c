
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct frame_type_desc {scalar_t__ fcb_type; } ;
struct TYPE_3__ {float silence_gain; int gain_pred_err; int frame_cntr; } ;
typedef TYPE_1__ WMAVoiceContext ;
typedef int GetBitContext ;


 scalar_t__ FCB_TYPE_SILENCE ;
 int MAX_FRAMESIZE ;
 int av_assert0 (int) ;
 size_t get_bits (int *,int) ;
 int memset (int ,int ,int) ;
 int pRNG (int ,int,int) ;
 float* wmavoice_gain_universal ;
 float* wmavoice_std_codebook ;

__attribute__((used)) static void synth_block_hardcoded(WMAVoiceContext *s, GetBitContext *gb,
                                 int block_idx, int size,
                                 const struct frame_type_desc *frame_desc,
                                 float *excitation)
{
    float gain;
    int n, r_idx;

    av_assert0(size <= MAX_FRAMESIZE);


    if (frame_desc->fcb_type == FCB_TYPE_SILENCE) {
        r_idx = pRNG(s->frame_cntr, block_idx, size);
        gain = s->silence_gain;
    } else {
        r_idx = get_bits(gb, 8);
        gain = wmavoice_gain_universal[get_bits(gb, 6)];
    }


    memset(s->gain_pred_err, 0, sizeof(s->gain_pred_err));


    for (n = 0; n < size; n++)
        excitation[n] = wmavoice_std_codebook[r_idx + n] * gain;
}
