
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int8_t ;
struct TYPE_6__ {int * qscale_table; } ;
struct TYPE_7__ {int mb_num; unsigned int* lambda_table; size_t* mb_index2xy; TYPE_1__* avctx; TYPE_2__ current_picture; } ;
struct TYPE_5__ {int qmax; int qmin; } ;
typedef TYPE_3__ MpegEncContext ;


 int FF_LAMBDA_SCALE ;
 int FF_LAMBDA_SHIFT ;
 int av_clip (int,int ,int ) ;

void ff_init_qscale_tab(MpegEncContext *s)
{
    int8_t * const qscale_table = s->current_picture.qscale_table;
    int i;

    for (i = 0; i < s->mb_num; i++) {
        unsigned int lam = s->lambda_table[s->mb_index2xy[i]];
        int qp = (lam * 139 + FF_LAMBDA_SCALE * 64) >> (FF_LAMBDA_SHIFT + 7);
        qscale_table[s->mb_index2xy[i]] = av_clip(qp, s->avctx->qmin,
                                                  s->avctx->qmax);
    }
}
