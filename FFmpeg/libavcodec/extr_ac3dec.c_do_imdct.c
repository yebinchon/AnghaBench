
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int (* imdct_half ) (TYPE_4__*,int *,int *) ;} ;
struct TYPE_9__ {int (* imdct_half ) (TYPE_3__*,int *,int *) ;} ;
struct TYPE_8__ {int * tmp_output; int ** delay; int window; int * outptr; TYPE_1__* fdsp; int ** transform_coeffs; TYPE_3__ imdct_512; TYPE_4__ imdct_256; scalar_t__* block_switch; } ;
struct TYPE_7__ {int (* vector_fmul_window ) (int ,int *,int *,int ,int) ;int (* vector_fmul_window_scaled ) (int ,int *,int *,int ,int,int) ;} ;
typedef int FFTSample ;
typedef TYPE_2__ AC3DecodeContext ;


 int memcpy (int *,int *,int) ;
 int stub1 (TYPE_4__*,int *,int *) ;
 int stub2 (int ,int *,int *,int ,int,int) ;
 int stub3 (int ,int *,int *,int ,int) ;
 int stub4 (TYPE_4__*,int *,int *) ;
 int stub5 (TYPE_3__*,int *,int *) ;
 int stub6 (int ,int *,int *,int ,int,int) ;
 int stub7 (int ,int *,int *,int ,int) ;

__attribute__((used)) static inline void do_imdct(AC3DecodeContext *s, int channels, int offset)
{
    int ch;

    for (ch = 1; ch <= channels; ch++) {
        if (s->block_switch[ch]) {
            int i;
            FFTSample *x = s->tmp_output + 128;
            for (i = 0; i < 128; i++)
                x[i] = s->transform_coeffs[ch][2 * i];
            s->imdct_256.imdct_half(&s->imdct_256, s->tmp_output, x);




            s->fdsp->vector_fmul_window(s->outptr[ch - 1], s->delay[ch - 1 + offset],
                                       s->tmp_output, s->window, 128);

            for (i = 0; i < 128; i++)
                x[i] = s->transform_coeffs[ch][2 * i + 1];
            s->imdct_256.imdct_half(&s->imdct_256, s->delay[ch - 1 + offset], x);
        } else {
            s->imdct_512.imdct_half(&s->imdct_512, s->tmp_output, s->transform_coeffs[ch]);




            s->fdsp->vector_fmul_window(s->outptr[ch - 1], s->delay[ch - 1 + offset],
                                       s->tmp_output, s->window, 128);

            memcpy(s->delay[ch - 1 + offset], s->tmp_output + 128, 128 * sizeof(FFTSample));
        }
    }
}
