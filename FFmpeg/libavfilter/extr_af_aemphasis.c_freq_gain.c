
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int a0; double a1; double a2; double b1; double b2; } ;
typedef TYPE_1__ BiquadCoeffs ;


 double M_PI ;
 double cos (double) ;
 double hypot (int,double) ;
 double sin (double) ;

__attribute__((used)) static double freq_gain(BiquadCoeffs *c, double freq, double sr)
{
    double zr, zi;

    freq *= 2.0 * M_PI / sr;
    zr = cos(freq);
    zi = -sin(freq);


    return hypot(c->a0 + c->a1*zr + c->a2*(zr*zr-zi*zi), c->a1*zi + 2*c->a2*zr*zi) /
           hypot(1 + c->b1*zr + c->b2*(zr*zr-zi*zi), c->b1*zi + 2*c->b2*zr*zi);
}
