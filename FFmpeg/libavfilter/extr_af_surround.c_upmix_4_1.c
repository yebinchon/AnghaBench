
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* priv; } ;
struct TYPE_6__ {int fr_y; int fr_x; int fl_y; int fl_x; int bc_y; int bc_x; int fc_y; int fc_x; int lfe_mode; int highcut; int lowcut; int output_lfe; TYPE_1__* output; } ;
struct TYPE_5__ {scalar_t__* extended_data; } ;
typedef TYPE_2__ AudioSurroundContext ;
typedef TYPE_3__ AVFilterContext ;


 float cosf (float) ;
 float fabsf (float) ;
 int get_lfe (int ,int,int ,int ,float*,float*,int ) ;
 float powf (float,int ) ;
 float sinf (float) ;

__attribute__((used)) static void upmix_4_1(AVFilterContext *ctx,
                      float l_phase,
                      float r_phase,
                      float c_phase,
                      float mag_total,
                      float x, float y,
                      int n)
{
    AudioSurroundContext *s = ctx->priv;
    float lfe_mag, b_mag, l_mag, r_mag, c_mag, *dstc, *dstl, *dstr, *dstb, *dstlfe;

    dstl = (float *)s->output->extended_data[0];
    dstr = (float *)s->output->extended_data[1];
    dstc = (float *)s->output->extended_data[2];
    dstlfe = (float *)s->output->extended_data[3];
    dstb = (float *)s->output->extended_data[4];

    get_lfe(s->output_lfe, n, s->lowcut, s->highcut, &lfe_mag, &mag_total, s->lfe_mode);

    dstlfe[2 * n ] = lfe_mag * cosf(c_phase);
    dstlfe[2 * n + 1] = lfe_mag * sinf(c_phase);

    c_mag = powf(1.f - fabsf(x), s->fc_x) * powf((y + 1.f) * .5f, s->fc_y) * mag_total;
    b_mag = powf(1.f - fabsf(x), s->bc_x) * powf((1.f - y) * .5f, s->bc_y) * mag_total;
    l_mag = powf(.5f * ( x + 1.f), s->fl_x) * powf((y + 1.f) * .5f, s->fl_y) * mag_total;
    r_mag = powf(.5f * (-x + 1.f), s->fr_x) * powf((y + 1.f) * .5f, s->fr_y) * mag_total;

    dstl[2 * n ] = l_mag * cosf(l_phase);
    dstl[2 * n + 1] = l_mag * sinf(l_phase);

    dstr[2 * n ] = r_mag * cosf(r_phase);
    dstr[2 * n + 1] = r_mag * sinf(r_phase);

    dstc[2 * n ] = c_mag * cosf(c_phase);
    dstc[2 * n + 1] = c_mag * sinf(c_phase);

    dstb[2 * n ] = b_mag * cosf(c_phase);
    dstb[2 * n + 1] = b_mag * sinf(c_phase);
}
