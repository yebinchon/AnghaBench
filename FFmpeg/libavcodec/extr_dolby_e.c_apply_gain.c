
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* fdsp; } ;
struct TYPE_4__ {int (* vector_fmul_scalar ) (float*,float*,float,int) ;} ;
typedef TYPE_2__ DBEContext ;


 int FRAME_SAMPLES ;
 float* gain_tab ;
 int stub1 (float*,float*,float,int) ;

__attribute__((used)) static void apply_gain(DBEContext *s, int begin, int end, float *output)
{
    if (begin == 960 && end == 960)
        return;

    if (begin == end) {
        s->fdsp->vector_fmul_scalar(output, output, gain_tab[end], FRAME_SAMPLES);
    } else {
        float a = gain_tab[begin] * (1.0f / (FRAME_SAMPLES - 1));
        float b = gain_tab[end ] * (1.0f / (FRAME_SAMPLES - 1));
        int i;

        for (i = 0; i < FRAME_SAMPLES; i++)
            output[i] *= a * (FRAME_SAMPLES - i - 1) + b * i;
    }
}
