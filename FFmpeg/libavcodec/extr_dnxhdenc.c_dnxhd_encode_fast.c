
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int mb; int value; } ;
struct TYPE_13__ {int (* execute2 ) (TYPE_4__*,int ,int *,int *,int) ;} ;
struct TYPE_11__ {int mb_height; int mb_width; int mb_num; } ;
struct TYPE_12__ {int qscale; int* mb_qscale; int* mb_bits; int frame_bits; TYPE_2__ m; TYPE_1__* mb_rc; TYPE_6__* mb_cmp; int mb_cmp_tmp; } ;
struct TYPE_10__ {int bits; int ssd; } ;
typedef TYPE_3__ DNXHDEncContext ;
typedef TYPE_4__ AVCodecContext ;


 int INT_MIN ;
 scalar_t__ RC_VARIANCE ;
 int dnxhd_find_qscale (TYPE_3__*) ;
 int dnxhd_mb_var_thread ;
 int radix_sort (TYPE_6__*,int ,int) ;
 int stub1 (TYPE_4__*,int ,int *,int *,int) ;

__attribute__((used)) static int dnxhd_encode_fast(AVCodecContext *avctx, DNXHDEncContext *ctx)
{
    int max_bits = 0;
    int ret, x, y;
    if ((ret = dnxhd_find_qscale(ctx)) < 0)
        return ret;
    for (y = 0; y < ctx->m.mb_height; y++) {
        for (x = 0; x < ctx->m.mb_width; x++) {
            int mb = y * ctx->m.mb_width + x;
            int rc = (ctx->qscale * ctx->m.mb_num ) + mb;
            int delta_bits;
            ctx->mb_qscale[mb] = ctx->qscale;
            ctx->mb_bits[mb] = ctx->mb_rc[rc].bits;
            max_bits += ctx->mb_rc[rc].bits;
            if (!RC_VARIANCE) {
                delta_bits = ctx->mb_rc[rc].bits -
                             ctx->mb_rc[rc + ctx->m.mb_num].bits;
                ctx->mb_cmp[mb].mb = mb;
                ctx->mb_cmp[mb].value =
                    delta_bits ? ((ctx->mb_rc[rc].ssd -
                                   ctx->mb_rc[rc + ctx->m.mb_num].ssd) * 100) /
                                  delta_bits
                               : INT_MIN;
            }
        }
        max_bits += 31;
    }
    if (!ret) {
        if (RC_VARIANCE)
            avctx->execute2(avctx, dnxhd_mb_var_thread,
                            ((void*)0), ((void*)0), ctx->m.mb_height);
        radix_sort(ctx->mb_cmp, ctx->mb_cmp_tmp, ctx->m.mb_num);
        for (x = 0; x < ctx->m.mb_num && max_bits > ctx->frame_bits; x++) {
            int mb = ctx->mb_cmp[x].mb;
            int rc = (ctx->qscale * ctx->m.mb_num ) + mb;
            max_bits -= ctx->mb_rc[rc].bits -
                        ctx->mb_rc[rc + ctx->m.mb_num].bits;
            ctx->mb_qscale[mb] = ctx->qscale + 1;
            ctx->mb_bits[mb] = ctx->mb_rc[rc + ctx->m.mb_num].bits;
        }
    }
    return 0;
}
