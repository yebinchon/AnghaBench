
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double sqr; double coeff; double aa; double aa1; int mode; double mix; int idc; int dc; } ;
typedef TYPE_1__ ACrusherContext ;


 double FFSIGN (double) ;
 double add_dc (double,int ,int ) ;
 double exp (double) ;
 double fabs (double) ;
 double factor (double,double,double const,double const) ;
 double const log (double) ;
 double remove_dc (double,int ,int ) ;
 double roundf (double) ;

__attribute__((used)) static double bitreduction(ACrusherContext *s, double in)
{
    const double sqr = s->sqr;
    const double coeff = s->coeff;
    const double aa = s->aa;
    const double aa1 = s->aa1;
    double y, k;


    in = add_dc(in, s->dc, s->idc);
    switch (s->mode) {
    case 0:
    default:

        y = in * coeff;
        k = roundf(y);
        if (k - aa1 <= y && y <= k + aa1) {
            k /= coeff;
        } else if (y > k + aa1) {
            k = k / coeff + ((k + 1) / coeff - k / coeff) *
                factor(y, k, aa1, aa);
        } else {
            k = k / coeff - (k / coeff - (k - 1) / coeff) *
                factor(y, k, aa1, aa);
        }
        break;
    case 1:

        y = sqr * log(fabs(in)) + sqr * sqr;
        k = roundf(y);
        if(!in) {
            k = 0;
        } else if (k - aa1 <= y && y <= k + aa1) {
            k = in / fabs(in) * exp(k / sqr - sqr);
        } else if (y > k + aa1) {
            double x = exp(k / sqr - sqr);
            k = FFSIGN(in) * (x + (exp((k + 1) / sqr - sqr) - x) *
                factor(y, k, aa1, aa));
        } else {
            double x = exp(k / sqr - sqr);
            k = in / fabs(in) * (x - (x - exp((k - 1) / sqr - sqr)) *
                factor(y, k, aa1, aa));
        }
        break;
    }


    k += (in - k) * s->mix;


    k = remove_dc(k, s->dc, s->idc);

    return k;
}
