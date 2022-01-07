
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* priv; } ;
struct TYPE_7__ {int buf_size; int (* upmix_3_0 ) (TYPE_3__*,float,float,float,float,float,float,float,int) ;int angle; TYPE_1__* input; } ;
struct TYPE_6__ {scalar_t__* extended_data; } ;
typedef TYPE_2__ AudioSurroundContext ;
typedef TYPE_3__ AVFilterContext ;


 float FFDIFFSIGN (float,float) ;
 float M_PI ;
 float atan2f (float,float) ;
 float fabsf (float) ;
 float hypotf (float,float) ;
 int stereo_position (float,float,float*,float*) ;
 int stereo_transform (float*,float*,int ) ;
 int stub1 (TYPE_3__*,float,float,float,float,float,float,float,int) ;

__attribute__((used)) static void filter_surround(AVFilterContext *ctx)
{
    AudioSurroundContext *s = ctx->priv;
    float *srcl, *srcr, *srcc;
    int n;

    srcl = (float *)s->input->extended_data[0];
    srcr = (float *)s->input->extended_data[1];
    srcc = (float *)s->input->extended_data[2];

    for (n = 0; n < s->buf_size; n++) {
        float l_re = srcl[2 * n], r_re = srcr[2 * n];
        float l_im = srcl[2 * n + 1], r_im = srcr[2 * n + 1];
        float c_re = srcc[2 * n], c_im = srcc[2 * n + 1];
        float c_mag = hypotf(c_re, c_im);
        float c_phase = atan2f(c_im, c_re);
        float l_mag = hypotf(l_re, l_im);
        float r_mag = hypotf(r_re, r_im);
        float l_phase = atan2f(l_im, l_re);
        float r_phase = atan2f(r_im, r_re);
        float phase_dif = fabsf(l_phase - r_phase);
        float mag_sum = l_mag + r_mag;
        float mag_dif = mag_sum < 0.000001 ? FFDIFFSIGN(l_mag, r_mag) : (l_mag - r_mag) / mag_sum;
        float mag_total = hypotf(l_mag, r_mag);
        float x, y;

        if (phase_dif > M_PI)
            phase_dif = 2 * M_PI - phase_dif;

        stereo_position(mag_dif, phase_dif, &x, &y);
        stereo_transform(&x, &y, s->angle);

        s->upmix_3_0(ctx, l_phase, r_phase, c_phase, c_mag, mag_total, x, y, n);
    }
}
