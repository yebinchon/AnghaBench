
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_pitch_val; int min_pitch_val; } ;
typedef TYPE_1__ WMAVoiceContext ;


 size_t FFMAX (int ,int) ;
 size_t FFMIN (int ,int) ;
 float avpriv_scalarproduct_float_c (float const*,float const*,int) ;

__attribute__((used)) static int kalman_smoothen(WMAVoiceContext *s, int pitch,
                           const float *in, float *out, int size)
{
    int n;
    float optimal_gain = 0, dot;
    const float *ptr = &in[-FFMAX(s->min_pitch_val, pitch - 3)],
                *end = &in[-FFMIN(s->max_pitch_val, pitch + 3)],
                *best_hist_ptr = ((void*)0);


    do {
        dot = avpriv_scalarproduct_float_c(in, ptr, size);
        if (dot > optimal_gain) {
            optimal_gain = dot;
            best_hist_ptr = ptr;
        }
    } while (--ptr >= end);

    if (optimal_gain <= 0)
        return -1;
    dot = avpriv_scalarproduct_float_c(best_hist_ptr, best_hist_ptr, size);
    if (dot <= 0)
        return -1;

    if (optimal_gain <= dot) {
        dot = dot / (dot + 0.6 * optimal_gain);
    } else
        dot = 0.625;


    for (n = 0; n < size; n++)
        out[n] = best_hist_ptr[n] + dot * (in[n] - best_hist_ptr[n]);

    return 0;
}
