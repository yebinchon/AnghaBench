
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ lut_clean; int contrast; } ;
struct TYPE_6__ {TYPE_3__* param; int contrast; int var_values; int contrast_pexpr; } ;
typedef TYPE_1__ EQContext ;


 int av_clipf (int ,double,double) ;
 int av_expr_eval (int ,int ,TYPE_1__*) ;
 int check_values (TYPE_3__*,TYPE_1__*) ;

__attribute__((used)) static void set_contrast(EQContext *eq)
{
    eq->contrast = av_clipf(av_expr_eval(eq->contrast_pexpr, eq->var_values, eq), -1000.0, 1000.0);
    eq->param[0].contrast = eq->contrast;
    eq->param[0].lut_clean = 0;
    check_values(&eq->param[0], eq);
}
