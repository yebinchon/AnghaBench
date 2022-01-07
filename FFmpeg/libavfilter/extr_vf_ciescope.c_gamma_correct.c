
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ColorSystem {double gamma; } ;


 double pow (double,int) ;

__attribute__((used)) static void
gamma_correct(const struct ColorSystem * const cs,
              double * const c)
{
    double gamma;
    double cc;

    gamma = cs->gamma;

    if (gamma == 0.) {

        cc = 0.018;
        if (*c < cc) {
            *c *= (1.099 * pow(cc, 0.45) - 0.099) / cc;
        } else {
            *c = 1.099 * pow(*c, 0.45) - 0.099;
        }
    } else {

        *c = pow(*c, 1./gamma);
    }
}
