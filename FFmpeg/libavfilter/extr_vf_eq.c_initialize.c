
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* priv; } ;
struct TYPE_10__ {scalar_t__ eval_mode; int gamma_weight_expr; int gamma_weight_pexpr; int gamma_b_expr; int gamma_b_pexpr; int gamma_g_expr; int gamma_g_pexpr; int gamma_r_expr; int gamma_r_pexpr; int gamma_expr; int gamma_pexpr; int saturation_expr; int saturation_pexpr; int brightness_expr; int brightness_pexpr; int contrast_expr; int contrast_pexpr; } ;
typedef TYPE_1__ EQContext ;
typedef TYPE_2__ AVFilterContext ;


 scalar_t__ EVAL_MODE_INIT ;
 int ff_eq_init (TYPE_1__*) ;
 int set_brightness (TYPE_1__*) ;
 int set_contrast (TYPE_1__*) ;
 int set_expr (int *,int ,char*,TYPE_2__*) ;
 int set_gamma (TYPE_1__*) ;
 int set_saturation (TYPE_1__*) ;

__attribute__((used)) static int initialize(AVFilterContext *ctx)
{
    EQContext *eq = ctx->priv;
    int ret;
    ff_eq_init(eq);

    if ((ret = set_expr(&eq->contrast_pexpr, eq->contrast_expr, "contrast", ctx)) < 0 ||
        (ret = set_expr(&eq->brightness_pexpr, eq->brightness_expr, "brightness", ctx)) < 0 ||
        (ret = set_expr(&eq->saturation_pexpr, eq->saturation_expr, "saturation", ctx)) < 0 ||
        (ret = set_expr(&eq->gamma_pexpr, eq->gamma_expr, "gamma", ctx)) < 0 ||
        (ret = set_expr(&eq->gamma_r_pexpr, eq->gamma_r_expr, "gamma_r", ctx)) < 0 ||
        (ret = set_expr(&eq->gamma_g_pexpr, eq->gamma_g_expr, "gamma_g", ctx)) < 0 ||
        (ret = set_expr(&eq->gamma_b_pexpr, eq->gamma_b_expr, "gamma_b", ctx)) < 0 ||
        (ret = set_expr(&eq->gamma_weight_pexpr, eq->gamma_weight_expr, "gamma_weight", ctx)) < 0 )
        return ret;

    if (eq->eval_mode == EVAL_MODE_INIT) {
        set_gamma(eq);
        set_contrast(eq);
        set_brightness(eq);
        set_saturation(eq);
    }

    return 0;
}
