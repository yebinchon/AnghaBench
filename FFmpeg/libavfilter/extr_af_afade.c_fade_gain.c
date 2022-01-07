
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double int64_t ;




 int CUBE (int) ;
 double M_PI ;





 double acos (int) ;
 double asin (double) ;
 double av_clipd (int,int ,double) ;
 int cbrt (int) ;
 int cos (double) ;
 double exp (double const) ;
 double log10 (double) ;
 double sin (double) ;
 double sqrt (double) ;

__attribute__((used)) static double fade_gain(int curve, int64_t index, int64_t range)
{

    double gain;

    gain = av_clipd(1.0 * index / range, 0, 1.0);

    switch (curve) {
    case 130:
        gain = sin(gain * M_PI / 2.0);
        break;
    case 135:

        gain = 0.6366197723675814 * asin(gain);
        break;
    case 140:
        gain = 1.0 - cos(M_PI / 4.0 * (((2.0*gain - 1)*(2.0*gain - 1)*(2.0*gain - 1)) + 1));
        break;
    case 138:
        gain = (1.0 - cos(gain * M_PI)) / 2.0;
        break;
    case 137:

        gain = 0.3183098861837907 * acos(1 - 2 * gain);
        break;
    case 139:

        gain = exp(-11.512925464970227 * (1 - gain));
        break;
    case 134:
        gain = av_clipd(1 + 0.2 * log10(gain), 0, 1.0);
        break;
    case 131:
        gain = 1 - sqrt(1 - gain);
        break;
    case 136:
        gain = (1 - (1 - gain) * (1 - gain));
        break;
    case 129:
        gain *= gain;
        break;
    case 143:
        gain = ((gain)*(gain)*(gain));
        break;
    case 128:
        gain = sqrt(gain);
        break;
    case 144:
        gain = cbrt(gain);
        break;
    case 142:
        gain = gain <= 0.5 ? cbrt(2 * gain) / 2: 1 - cbrt(2 * (1 - gain)) / 2;
        break;
    case 141:
        gain = gain <= 0.5 ? ((2 * gain)*(2 * gain)*(2 * gain)) / 2: 1 - ((2 * (1 - gain))*(2 * (1 - gain))*(2 * (1 - gain))) / 2;
        break;
    case 133: {
                   const double a = 1. / (1. - 0.787) - 1;
                   double A = 1. / (1.0 + exp(0 -((gain-0.5) * a * 2.0)));
                   double B = 1. / (1.0 + exp(a));
                   double C = 1. / (1.0 + exp(0-a));
                   gain = (A - B) / (C - B);
               }
        break;
    case 132:
        gain = 1.0;
        break;
    }

    return gain;
}
