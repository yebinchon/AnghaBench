
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double param; int type; } ;
typedef TYPE_1__ ASoftClipContext ;
 double FFABS (double const) ;
 double FFSIGN (double const) ;
 int M_PI ;
 double M_PI_2 ;
 int atan (double const) ;
 int exp (int) ;
 double pow (double const,int) ;
 double sin (double const) ;
 double const sqrt (double) ;
 double tanh (double const) ;

__attribute__((used)) static void filter_dbl(ASoftClipContext *s,
                       void **dptr, const void **sptr,
                       int nb_samples, int channels)
{
    double param = s->param;

    for (int c = 0; c < channels; c++) {
        const double *src = sptr[c];
        double *dst = dptr[c];

        switch (s->type) {
        case 128:
            for (int n = 0; n < nb_samples; n++) {
                dst[n] = tanh(src[n] * param);
            }
            break;
        case 133:
            for (int n = 0; n < nb_samples; n++)
                dst[n] = 2. / M_PI * atan(src[n] * param);
            break;
        case 132:
            for (int n = 0; n < nb_samples; n++) {
                if (FFABS(src[n]) >= 1.5)
                    dst[n] = FFSIGN(src[n]);
                else
                    dst[n] = src[n] - 0.1481 * pow(src[n], 3.);
            }
            break;
        case 131:
            for (int n = 0; n < nb_samples; n++)
                dst[n] = 2. / (1. + exp(-2. * src[n])) - 1.;
            break;
        case 134:
            for (int n = 0; n < nb_samples; n++)
                dst[n] = src[n] / (sqrt(param + src[n] * src[n]));
            break;
        case 130:
            for (int n = 0; n < nb_samples; n++) {
                if (FFABS(src[n]) >= 1.25)
                    dst[n] = FFSIGN(src[n]);
                else
                    dst[n] = src[n] - 0.08192 * pow(src[n], 5.);
            }
            break;
        case 129:
            for (int n = 0; n < nb_samples; n++) {
                if (FFABS(src[n]) >= M_PI_2)
                    dst[n] = FFSIGN(src[n]);
                else
                    dst[n] = sin(src[n]);
            }
            break;
        }
    }
}
