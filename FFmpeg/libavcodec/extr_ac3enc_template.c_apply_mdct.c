
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int (* mdct_calcw ) (TYPE_5__*,int ,int ) ;} ;
struct TYPE_11__ {int * mdct_coef; int * coeff_shift; } ;
struct TYPE_9__ {int (* apply_window_int16 ) (int ,int const*,int ,int ) ;} ;
struct TYPE_10__ {int channels; int num_blocks; int windowed_samples; TYPE_5__ mdct; scalar_t__ fixed_point; int mdct_window; TYPE_2__ ac3dsp; TYPE_1__* fdsp; int ** planar_samples; TYPE_4__* blocks; } ;
struct TYPE_8__ {int (* vector_fmul ) (int ,int const*,int ,int ) ;} ;
typedef int SampleType ;
typedef TYPE_3__ AC3EncodeContext ;
typedef TYPE_4__ AC3Block ;


 int AC3_BLOCK_SIZE ;
 int AC3_WINDOW_SIZE ;
 int normalize_samples (TYPE_3__*) ;
 int stub1 (int ,int const*,int ,int ) ;
 int stub2 (int ,int const*,int ,int ) ;
 int stub3 (TYPE_5__*,int ,int ) ;

__attribute__((used)) static void apply_mdct(AC3EncodeContext *s)
{
    int blk, ch;

    for (ch = 0; ch < s->channels; ch++) {
        for (blk = 0; blk < s->num_blocks; blk++) {
            AC3Block *block = &s->blocks[blk];
            const SampleType *input_samples = &s->planar_samples[ch][blk * AC3_BLOCK_SIZE];





            s->ac3dsp.apply_window_int16(s->windowed_samples, input_samples,
                                         s->mdct_window, AC3_WINDOW_SIZE);

            if (s->fixed_point)
                block->coeff_shift[ch+1] = normalize_samples(s);


            s->mdct.mdct_calcw(&s->mdct, block->mdct_coef[ch+1],
                               s->windowed_samples);
        }
    }
}
