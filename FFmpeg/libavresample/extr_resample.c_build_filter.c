
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filter_length; int phase_shift; int filter_type; int kaiser_beta; int filter_bank; int (* set_filter ) (int ,double*,int,int) ;} ;
typedef TYPE_1__ ResampleContext ;


 int AVERROR (int ) ;



 int ENOMEM ;
 int FFMAX (int,int ) ;
 double M_PI ;
 int av_free (double*) ;
 double* av_malloc (int) ;
 double bessel (int) ;
 double cos (int) ;
 double fabs (double) ;
 double sin (double) ;
 int sqrt (int ) ;
 int stub1 (int ,double*,int,int) ;

__attribute__((used)) static int build_filter(ResampleContext *c, double factor)
{
    int ph, i;
    double x, y, w;
    double *tab;
    int tap_count = c->filter_length;
    int phase_count = 1 << c->phase_shift;
    const int center = (tap_count - 1) / 2;

    tab = av_malloc(tap_count * sizeof(*tab));
    if (!tab)
        return AVERROR(ENOMEM);

    for (ph = 0; ph < phase_count; ph++) {
        double norm = 0;
        for (i = 0; i < tap_count; i++) {
            x = M_PI * ((double)(i - center) - (double)ph / phase_count) * factor;
            if (x == 0) y = 1.0;
            else y = sin(x) / x;
            switch (c->filter_type) {
            case 129: {
                const float d = -0.5;
                x = fabs(((double)(i - center) - (double)ph / phase_count) * factor);
                if (x < 1.0) y = 1 - 3 * x*x + 2 * x*x*x + d * ( -x*x + x*x*x);
                else y = d * (-4 + 8 * x - 5 * x*x + x*x*x);
                break;
            }
            case 130:
                w = 2.0 * x / (factor * tap_count) + M_PI;
                y *= 0.3635819 - 0.4891775 * cos( w) +
                                 0.1365995 * cos(2 * w) -
                                 0.0106411 * cos(3 * w);
                break;
            case 128:
                w = 2.0 * x / (factor * tap_count * M_PI);
                y *= bessel(c->kaiser_beta * sqrt(FFMAX(1 - w * w, 0)));
                break;
            }

            tab[i] = y;
            norm += y;
        }

        for (i = 0; i < tap_count; i++)
            tab[i] = tab[i] / norm;

        c->set_filter(c->filter_bank, tab, ph, tap_count);
    }

    av_free(tab);
    return 0;
}
