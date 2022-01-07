
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lmin; int lmax; TYPE_1__* avctx; } ;
struct TYPE_4__ {int i_quant_offset; int i_quant_factor; int b_quant_offset; int b_quant_factor; } ;
typedef TYPE_2__ MpegEncContext ;




 int FFABS (int ) ;
 int FF_LAMBDA_MAX ;
 int av_assert0 (int) ;
 int av_clip (int,int,int ) ;

__attribute__((used)) static void get_qminmax(int *qmin_ret, int *qmax_ret, MpegEncContext *s, int pict_type)
{
    int qmin = s->lmin;
    int qmax = s->lmax;

    av_assert0(qmin <= qmax);

    switch (pict_type) {
    case 129:
        qmin = (int)(qmin * FFABS(s->avctx->b_quant_factor) + s->avctx->b_quant_offset + 0.5);
        qmax = (int)(qmax * FFABS(s->avctx->b_quant_factor) + s->avctx->b_quant_offset + 0.5);
        break;
    case 128:
        qmin = (int)(qmin * FFABS(s->avctx->i_quant_factor) + s->avctx->i_quant_offset + 0.5);
        qmax = (int)(qmax * FFABS(s->avctx->i_quant_factor) + s->avctx->i_quant_offset + 0.5);
        break;
    }

    qmin = av_clip(qmin, 1, FF_LAMBDA_MAX);
    qmax = av_clip(qmax, 1, FF_LAMBDA_MAX);

    if (qmax < qmin)
        qmax = qmin;

    *qmin_ret = qmin;
    *qmax_ret = qmax;
}
