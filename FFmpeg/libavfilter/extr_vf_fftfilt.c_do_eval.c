
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {double frame_count_out; } ;
struct TYPE_6__ {double* planewidth; double* planeheight; int* rdft_hlen; int* rdft_vlen; int * weight_expr; int ** weight; } ;
typedef TYPE_1__ FFTFILTContext ;
typedef TYPE_2__ AVFilterLink ;


 size_t VAR_H ;
 size_t VAR_N ;
 int VAR_VARS_NB ;
 size_t VAR_W ;
 size_t VAR_X ;
 size_t VAR_Y ;
 int av_expr_eval (int ,double*,TYPE_1__*) ;

__attribute__((used)) static void do_eval(FFTFILTContext *s, AVFilterLink *inlink, int plane)
{
    double values[VAR_VARS_NB];
    int i, j;

    values[VAR_N] = inlink->frame_count_out;
    values[VAR_W] = s->planewidth[plane];
    values[VAR_H] = s->planeheight[plane];

    for (i = 0; i < s->rdft_hlen[plane]; i++) {
        values[VAR_X] = i;
        for (j = 0; j < s->rdft_vlen[plane]; j++) {
            values[VAR_Y] = j;
            s->weight[plane][i * s->rdft_vlen[plane] + j] =
            av_expr_eval(s->weight_expr[plane], values, s);
        }
    }
}
