
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * process; } ;
struct TYPE_5__ {double contrast; double brightness; double gamma; int * adjust; } ;
typedef TYPE_1__ EQParameters ;
typedef TYPE_2__ EQContext ;


 int * apply_lut ;
 double fabs (double) ;

__attribute__((used)) static void check_values(EQParameters *param, EQContext *eq)
{
    if (param->contrast == 1.0 && param->brightness == 0.0 && param->gamma == 1.0)
        param->adjust = ((void*)0);
    else if (param->gamma == 1.0 && fabs(param->contrast) < 7.9)
        param->adjust = eq->process;
    else
        param->adjust = apply_lut;
}
