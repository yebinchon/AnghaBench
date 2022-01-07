
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double* var_values; } ;
typedef TYPE_1__ LutContext ;


 size_t VAR_CLIPVAL ;
 size_t VAR_MAXVAL ;
 size_t VAR_MINVAL ;
 double pow (double,double) ;

__attribute__((used)) static double compute_gammaval709(void *opaque, double gamma)
{
    LutContext *s = opaque;
    double val = s->var_values[VAR_CLIPVAL];
    double minval = s->var_values[VAR_MINVAL];
    double maxval = s->var_values[VAR_MAXVAL];
    double level = (val - minval) / (maxval - minval);
    level = level < 0.018 ? 4.5 * level
                          : 1.099 * pow(level, 1.0 / gamma) - 0.099;
    return level * (maxval - minval) + minval;
}
