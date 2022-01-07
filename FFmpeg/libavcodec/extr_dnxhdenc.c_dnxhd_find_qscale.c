
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int qmax; int (* execute2 ) (TYPE_4__*,int ,int *,int *,int) ;} ;
struct TYPE_7__ {int mb_height; int mb_width; int mb_num; TYPE_4__* avctx; } ;
struct TYPE_8__ {int qscale; int frame_bits; TYPE_2__ m; TYPE_1__* mb_rc; } ;
struct TYPE_6__ {scalar_t__ bits; } ;
typedef TYPE_3__ DNXHDEncContext ;


 int AVERROR (int ) ;
 int EINVAL ;
 int FFMAX (int,int) ;
 int FFMIN (int,int) ;
 int INT_MAX ;
 int dnxhd_calc_bits_thread ;
 int stub1 (TYPE_4__*,int ,int *,int *,int) ;

__attribute__((used)) static int dnxhd_find_qscale(DNXHDEncContext *ctx)
{
    int bits = 0;
    int up_step = 1;
    int down_step = 1;
    int last_higher = 0;
    int last_lower = INT_MAX;
    int qscale;
    int x, y;

    qscale = ctx->qscale;
    for (;;) {
        bits = 0;
        ctx->qscale = qscale;

        ctx->m.avctx->execute2(ctx->m.avctx, dnxhd_calc_bits_thread,
                               ((void*)0), ((void*)0), ctx->m.mb_height);
        for (y = 0; y < ctx->m.mb_height; y++) {
            for (x = 0; x < ctx->m.mb_width; x++)
                bits += ctx->mb_rc[(qscale*ctx->m.mb_num) + (y*ctx->m.mb_width+x)].bits;
            bits = (bits+31)&~31;
            if (bits > ctx->frame_bits)
                break;
        }
        if (bits < ctx->frame_bits) {
            if (qscale == 1)
                return 1;
            if (last_higher == qscale - 1) {
                qscale = last_higher;
                break;
            }
            last_lower = FFMIN(qscale, last_lower);
            if (last_higher != 0)
                qscale = (qscale + last_higher) >> 1;
            else
                qscale -= down_step++;
            if (qscale < 1)
                qscale = 1;
            up_step = 1;
        } else {
            if (last_lower == qscale + 1)
                break;
            last_higher = FFMAX(qscale, last_higher);
            if (last_lower != INT_MAX)
                qscale = (qscale + last_lower) >> 1;
            else
                qscale += up_step++;
            down_step = 1;
            if (qscale >= ctx->m.avctx->qmax)
                return AVERROR(EINVAL);
        }
    }
    ctx->qscale = qscale;
    return 0;
}
