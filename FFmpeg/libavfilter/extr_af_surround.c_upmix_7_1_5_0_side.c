
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* priv; } ;
struct TYPE_6__ {int sr_y; int sr_x; int sl_y; int sl_x; int br_y; int br_x; int bl_y; int bl_x; int fr_y; int fr_x; int fl_y; int fl_x; int lfe_mode; int highcut; int lowcut; int output_lfe; TYPE_1__* output; } ;
struct TYPE_5__ {scalar_t__* extended_data; } ;
typedef TYPE_2__ AudioSurroundContext ;
typedef TYPE_3__ AVFilterContext ;


 float atan2f (float,float) ;
 float cosf (float) ;
 float fabsf (float) ;
 int get_lfe (int ,int,int ,int ,float*,float*,int ) ;
 float powf (float,int ) ;
 float sinf (float) ;

__attribute__((used)) static void upmix_7_1_5_0_side(AVFilterContext *ctx,
                               float c_re, float c_im,
                               float mag_totall, float mag_totalr,
                               float fl_phase, float fr_phase,
                               float bl_phase, float br_phase,
                               float sl_phase, float sr_phase,
                               float xl, float yl,
                               float xr, float yr,
                               int n)
{
    float fl_mag, fr_mag, ls_mag, rs_mag, lb_mag, rb_mag;
    float *dstc, *dstl, *dstr, *dstls, *dstrs, *dstlb, *dstrb, *dstlfe;
    float lfe_mag, c_phase, mag_total = (mag_totall + mag_totalr) * 0.5;
    AudioSurroundContext *s = ctx->priv;

    dstl = (float *)s->output->extended_data[0];
    dstr = (float *)s->output->extended_data[1];
    dstc = (float *)s->output->extended_data[2];
    dstlfe = (float *)s->output->extended_data[3];
    dstlb = (float *)s->output->extended_data[4];
    dstrb = (float *)s->output->extended_data[5];
    dstls = (float *)s->output->extended_data[6];
    dstrs = (float *)s->output->extended_data[7];

    c_phase = atan2f(c_im, c_re);

    get_lfe(s->output_lfe, n, s->lowcut, s->highcut, &lfe_mag, &mag_total, s->lfe_mode);

    fl_mag = powf(.5f * (xl + 1.f), s->fl_x) * powf((yl + 1.f) * .5f, s->fl_y) * mag_totall;
    fr_mag = powf(.5f * (xr + 1.f), s->fr_x) * powf((yr + 1.f) * .5f, s->fr_y) * mag_totalr;
    lb_mag = powf(.5f * (-xl + 1.f), s->bl_x) * powf((yl + 1.f) * .5f, s->bl_y) * mag_totall;
    rb_mag = powf(.5f * (-xr + 1.f), s->br_x) * powf((yr + 1.f) * .5f, s->br_y) * mag_totalr;
    ls_mag = powf(1.f - fabsf(xl), s->sl_x) * powf((yl + 1.f) * .5f, s->sl_y) * mag_totall;
    rs_mag = powf(1.f - fabsf(xr), s->sr_x) * powf((yr + 1.f) * .5f, s->sr_y) * mag_totalr;

    dstl[2 * n ] = fl_mag * cosf(fl_phase);
    dstl[2 * n + 1] = fl_mag * sinf(fl_phase);

    dstr[2 * n ] = fr_mag * cosf(fr_phase);
    dstr[2 * n + 1] = fr_mag * sinf(fr_phase);

    dstc[2 * n ] = c_re;
    dstc[2 * n + 1] = c_im;

    dstlfe[2 * n ] = lfe_mag * cosf(c_phase);
    dstlfe[2 * n + 1] = lfe_mag * sinf(c_phase);

    dstlb[2 * n ] = lb_mag * cosf(bl_phase);
    dstlb[2 * n + 1] = lb_mag * sinf(bl_phase);

    dstrb[2 * n ] = rb_mag * cosf(br_phase);
    dstrb[2 * n + 1] = rb_mag * sinf(br_phase);

    dstls[2 * n ] = ls_mag * cosf(sl_phase);
    dstls[2 * n + 1] = ls_mag * sinf(sl_phase);

    dstrs[2 * n ] = rs_mag * cosf(sr_phase);
    dstrs[2 * n + 1] = rs_mag * sinf(sr_phase);
}
