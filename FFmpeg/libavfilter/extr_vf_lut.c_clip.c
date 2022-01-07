
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double* var_values; } ;
typedef TYPE_1__ LutContext ;


 size_t VAR_MAXVAL ;
 size_t VAR_MINVAL ;
 double av_clip (double,double,double) ;

__attribute__((used)) static double clip(void *opaque, double val)
{
    LutContext *s = opaque;
    double minval = s->var_values[VAR_MINVAL];
    double maxval = s->var_values[VAR_MAXVAL];

    return av_clip(val, minval, maxval);
}
