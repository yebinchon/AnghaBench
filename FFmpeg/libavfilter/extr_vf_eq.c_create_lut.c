
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double gamma; double gamma_weight; double contrast; double brightness; int* lut; int lut_clean; } ;
typedef TYPE_1__ EQParameters ;


 double pow (double,double) ;

__attribute__((used)) static void create_lut(EQParameters *param)
{
    int i;
    double g = 1.0 / param->gamma;
    double lw = 1.0 - param->gamma_weight;

    for (i = 0; i < 256; i++) {
        double v = i / 255.0;
        v = param->contrast * (v - 0.5) + 0.5 + param->brightness;

        if (v <= 0.0) {
            param->lut[i] = 0;
        } else {
            v = v * lw + pow(v, g) * param->gamma_weight;

            if (v >= 1.0)
                param->lut[i] = 255;
            else
                param->lut[i] = 256.0 * v;
        }
    }

    param->lut_clean = 1;
}
