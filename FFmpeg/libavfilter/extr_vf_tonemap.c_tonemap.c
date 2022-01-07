
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ desat; int tonemap; float param; TYPE_2__* coeffs; } ;
typedef TYPE_3__ TonemapContext ;
struct TYPE_14__ {int* linesize; scalar_t__* data; } ;
struct TYPE_13__ {TYPE_1__* comp; } ;
struct TYPE_11__ {float const cr; float const cg; float const cb; } ;
struct TYPE_10__ {int step; } ;
typedef TYPE_4__ AVPixFmtDescriptor ;
typedef TYPE_5__ AVFrame ;


 float FFMAX (float,int) ;
 float FFMAX3 (float,float,float) ;
 float MIX (float const,float,float) ;







 float av_clipf (float,int ,float) ;
 float hable (double) ;
 float mobius (float,float,double) ;
 float pow (float,float) ;

__attribute__((used)) static void tonemap(TonemapContext *s, AVFrame *out, const AVFrame *in,
                    const AVPixFmtDescriptor *desc, int x, int y, double peak)
{
    const float *r_in = (const float *)(in->data[0] + x * desc->comp[0].step + y * in->linesize[0]);
    const float *b_in = (const float *)(in->data[1] + x * desc->comp[1].step + y * in->linesize[1]);
    const float *g_in = (const float *)(in->data[2] + x * desc->comp[2].step + y * in->linesize[2]);
    float *r_out = (float *)(out->data[0] + x * desc->comp[0].step + y * out->linesize[0]);
    float *b_out = (float *)(out->data[1] + x * desc->comp[1].step + y * out->linesize[1]);
    float *g_out = (float *)(out->data[2] + x * desc->comp[2].step + y * out->linesize[2]);
    float sig, sig_orig;


    *r_out = *r_in;
    *b_out = *b_in;
    *g_out = *g_in;


    if (s->desat > 0) {
        float luma = s->coeffs->cr * *r_in + s->coeffs->cg * *g_in + s->coeffs->cb * *b_in;
        float overbright = FFMAX(luma - s->desat, 1e-6) / FFMAX(luma, 1e-6);
        *r_out = MIX(*r_in, luma, overbright);
        *g_out = MIX(*g_in, luma, overbright);
        *b_out = MIX(*b_in, luma, overbright);
    }




    sig = FFMAX(FFMAX3(*r_out, *g_out, *b_out), 1e-6);
    sig_orig = sig;

    switch(s->tonemap) {
    default:
    case 129:

        break;
    case 131:
        sig = sig * s->param / peak;
        break;
    case 133:
        sig = sig > 0.05f ? pow(sig / peak, 1.0f / s->param)
                          : sig * pow(0.05f / peak, 1.0f / s->param) / 0.05f;
        break;
    case 134:
        sig = av_clipf(sig * s->param, 0, 1.0f);
        break;
    case 132:
        sig = hable(sig) / hable(peak);
        break;
    case 128:
        sig = sig / (sig + s->param) * (peak + s->param) / peak;
        break;
    case 130:
        sig = mobius(sig, s->param, peak);
        break;
    }



    *r_out *= sig / sig_orig;
    *g_out *= sig / sig_orig;
    *b_out *= sig / sig_orig;
}
