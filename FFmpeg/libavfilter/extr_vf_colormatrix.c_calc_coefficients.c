
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int*** yuv_convert; } ;
typedef TYPE_1__ ColorMatrixContext ;
typedef TYPE_2__ AVFilterContext ;


 int AV_LOG_ERROR ;
 void* NS (double) ;
 int av_log (TYPE_2__*,int ,char*) ;
 int inverse3x3 (double**,double**) ;
 int solve_coefficients (double**,double**,double**) ;
 double** yuv_coeff_luma ;

__attribute__((used)) static void calc_coefficients(AVFilterContext *ctx)
{
    ColorMatrixContext *color = ctx->priv;
    double yuv_coeff[5][3][3];
    double rgb_coeffd[5][3][3];
    double yuv_convertd[25][3][3];
    double bscale, rscale;
    int v = 0;
    int i, j, k;
    for (i = 0; i < 5; i++) {
        yuv_coeff[i][0][0] = yuv_coeff_luma[i][0];
        yuv_coeff[i][0][1] = yuv_coeff_luma[i][1];
        yuv_coeff[i][0][2] = yuv_coeff_luma[i][2];
        bscale = 0.5 / (yuv_coeff[i][0][1] - 1.0);
        rscale = 0.5 / (yuv_coeff[i][0][2] - 1.0);
        yuv_coeff[i][1][0] = bscale * yuv_coeff[i][0][0];
        yuv_coeff[i][1][1] = 0.5;
        yuv_coeff[i][1][2] = bscale * yuv_coeff[i][0][2];
        yuv_coeff[i][2][0] = rscale * yuv_coeff[i][0][0];
        yuv_coeff[i][2][1] = rscale * yuv_coeff[i][0][1];
        yuv_coeff[i][2][2] = 0.5;
    }
    for (i = 0; i < 5; i++)
        inverse3x3(rgb_coeffd[i], yuv_coeff[i]);
    for (i = 0; i < 5; i++) {
        for (j = 0; j < 5; j++) {
            solve_coefficients(yuv_convertd[v], rgb_coeffd[i], yuv_coeff[j]);
            for (k = 0; k < 3; k++) {
                color->yuv_convert[v][k][0] = NS(yuv_convertd[v][k][0]);
                color->yuv_convert[v][k][1] = NS(yuv_convertd[v][k][1]);
                color->yuv_convert[v][k][2] = NS(yuv_convertd[v][k][2]);
            }
            if (color->yuv_convert[v][0][0] != 65536 || color->yuv_convert[v][1][0] != 0 ||
                color->yuv_convert[v][2][0] != 0) {
                av_log(ctx, AV_LOG_ERROR, "error calculating conversion coefficients\n");
            }
            v++;
        }
    }
}
