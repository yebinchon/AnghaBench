
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {double a0; double a1; double a2; double b1; double b2; } ;
struct TYPE_16__ {int use_brickw; int brickw; TYPE_5__ r1; } ;
struct TYPE_14__ {TYPE_2__* priv; } ;
struct TYPE_13__ {double sample_rate; int channels; TYPE_4__* dst; } ;
struct TYPE_12__ {int type; scalar_t__ mode; TYPE_6__* rc; } ;
struct TYPE_11__ {double a0; double a1; double a2; double b1; double b2; } ;
typedef int RIAACurve ;
typedef TYPE_1__ BiquadCoeffs ;
typedef TYPE_2__ AudioEmphasisContext ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 double FFMIN (double,int) ;
 int M_PI ;
 TYPE_6__* av_calloc (int,int) ;
 double freq_gain (TYPE_1__*,double,double) ;
 int memcpy (TYPE_6__*,TYPE_6__*,int) ;
 double pow (double,double) ;
 int set_highshelf_rbj (TYPE_5__*,double,double,double,double) ;
 int set_lp_rbj (int *,double,double,double,int) ;
 double sqrt (double) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    double i, j, k, g, t, a0, a1, a2, b1, b2, tau1, tau2, tau3;
    double cutfreq, gain1kHz, gc, sr = inlink->sample_rate;
    AVFilterContext *ctx = inlink->dst;
    AudioEmphasisContext *s = ctx->priv;
    BiquadCoeffs coeffs;
    int ch;

    s->rc = av_calloc(inlink->channels, sizeof(*s->rc));
    if (!s->rc)
        return AVERROR(ENOMEM);

    switch (s->type) {
    case 0:
        i = 100.;
        j = 500.;
        k = 1590.;
        break;
    case 1:
        i = 70.;
        j = 500.;
        k = 2500.;
        break;
    case 2:
        i = 50.;
        j = 353.;
        k = 3180.;
        break;
    case 3:
    default:
        tau1 = 0.003180;
        tau2 = 0.000318;
        tau3 = 0.000075;
        i = 1. / (2. * M_PI * tau1);
        j = 1. / (2. * M_PI * tau2);
        k = 1. / (2. * M_PI * tau3);
        break;
    case 4:
        tau1 = 0.000050;
        tau2 = 0.000015;
        tau3 = 0.0000001;
        i = 1. / (2. * M_PI * tau1);
        j = 1. / (2. * M_PI * tau2);
        k = 1. / (2. * M_PI * tau3);
        break;
    case 5:
        tau1 = 0.000050;
        tau2 = tau1 / 20;
        tau3 = tau1 / 50;
        i = 1. / (2. * M_PI * tau1);
        j = 1. / (2. * M_PI * tau2);
        k = 1. / (2. * M_PI * tau3);
        break;
    case 6:
        tau1 = 0.000075;
        tau2 = tau1 / 20;
        tau3 = tau1 / 50;
        i = 1. / (2. * M_PI * tau1);
        j = 1. / (2. * M_PI * tau2);
        k = 1. / (2. * M_PI * tau3);
        break;
    }

    i *= 2 * M_PI;
    j *= 2 * M_PI;
    k *= 2 * M_PI;

    t = 1. / sr;


    if (s->type == 7 || s->type == 8) {
        double tau = (s->type == 7 ? 0.000050 : 0.000075);
        double f = 1.0 / (2 * M_PI * tau);
        double nyq = sr * 0.5;
        double gain = sqrt(1.0 + nyq * nyq / (f * f));
        double cfreq = sqrt((gain - 1.0) * f * f);
        double q = 1.0;

        if (s->type == 8)
            q = pow((sr / 3269.0) + 19.5, -0.25);
        if (s->type == 7)
            q = pow((sr / 4750.0) + 19.5, -0.25);
        if (s->mode == 0)
            set_highshelf_rbj(&s->rc[0].r1, cfreq, q, 1. / gain, sr);
        else
            set_highshelf_rbj(&s->rc[0].r1, cfreq, q, gain, sr);
        s->rc[0].use_brickw = 0;
    } else {
        s->rc[0].use_brickw = 1;
        if (s->mode == 0) {
            g = 1. / (4.+2.*i*t+2.*k*t+i*k*t*t);
            a0 = (2.*t+j*t*t)*g;
            a1 = (2.*j*t*t)*g;
            a2 = (-2.*t+j*t*t)*g;
            b1 = (-8.+2.*i*k*t*t)*g;
            b2 = (4.-2.*i*t-2.*k*t+i*k*t*t)*g;
        } else {
            g = 1. / (2.*t+j*t*t);
            a0 = (4.+2.*i*t+2.*k*t+i*k*t*t)*g;
            a1 = (-8.+2.*i*k*t*t)*g;
            a2 = (4.-2.*i*t-2.*k*t+i*k*t*t)*g;
            b1 = (2.*j*t*t)*g;
            b2 = (-2.*t+j*t*t)*g;
        }

        coeffs.a0 = a0;
        coeffs.a1 = a1;
        coeffs.a2 = a2;
        coeffs.b1 = b1;
        coeffs.b2 = b2;




        gain1kHz = freq_gain(&coeffs, 1000.0, sr);

        gc = 1.0 / gain1kHz;
        s->rc[0].r1.a0 = coeffs.a0 * gc;
        s->rc[0].r1.a1 = coeffs.a1 * gc;
        s->rc[0].r1.a2 = coeffs.a2 * gc;
        s->rc[0].r1.b1 = coeffs.b1;
        s->rc[0].r1.b2 = coeffs.b2;
    }

    cutfreq = FFMIN(0.45 * sr, 21000.);
    set_lp_rbj(&s->rc[0].brickw, cutfreq, 0.707, sr, 1.);

    for (ch = 1; ch < inlink->channels; ch++) {
        memcpy(&s->rc[ch], &s->rc[0], sizeof(RIAACurve));
    }

    return 0;
}
