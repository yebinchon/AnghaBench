
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ lut_clean; int contrast; } ;
struct TYPE_6__ {TYPE_3__* param; int saturation; int var_values; int saturation_pexpr; } ;
typedef TYPE_1__ EQContext ;


 int av_clipf (int ,double,double) ;
 int av_expr_eval (int ,int ,TYPE_1__*) ;
 int check_values (TYPE_3__*,TYPE_1__*) ;

__attribute__((used)) static void set_saturation(EQContext *eq)
{
    int i;

    eq->saturation = av_clipf(av_expr_eval(eq->saturation_pexpr, eq->var_values, eq), 0.0, 3.0);

    for (i = 1; i < 3; i++) {
        eq->param[i].contrast = eq->saturation;
        eq->param[i].lut_clean = 0;
        check_values(&eq->param[i], eq);
    }
}
