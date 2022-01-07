
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_11__ {int qmax; int (* execute2 ) (TYPE_4__*,int ,int *,int *,int) ;} ;
struct TYPE_8__ {int mb_height; int mb_width; int mb_num; } ;
struct TYPE_10__ {int qscale; int lambda; int* mb_qscale; int* mb_bits; int frame_bits; TYPE_2__* mb_rc; TYPE_1__ m; } ;
struct TYPE_9__ {int bits; scalar_t__ ssd; } ;
typedef TYPE_3__ DNXHDEncContext ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR (int ) ;
 int EINVAL ;
 int FFMAX (int,int) ;
 int FFMIN (int,int) ;
 int INT_MAX ;
 int LAMBDA_FRAC_BITS ;
 unsigned int UINT_MAX ;
 int dnxhd_calc_bits_thread ;
 int stub1 (TYPE_4__*,int ,int *,int *,int) ;

__attribute__((used)) static int dnxhd_encode_rdo(AVCodecContext *avctx, DNXHDEncContext *ctx)
{
    int lambda, up_step, down_step;
    int last_lower = INT_MAX, last_higher = 0;
    int x, y, q;

    for (q = 1; q < avctx->qmax; q++) {
        ctx->qscale = q;
        avctx->execute2(avctx, dnxhd_calc_bits_thread,
                        ((void*)0), ((void*)0), ctx->m.mb_height);
    }
    up_step = down_step = 2 << LAMBDA_FRAC_BITS;
    lambda = ctx->lambda;

    for (;;) {
        int bits = 0;
        int end = 0;
        if (lambda == last_higher) {
            lambda++;
            end = 1;
        }
        for (y = 0; y < ctx->m.mb_height; y++) {
            for (x = 0; x < ctx->m.mb_width; x++) {
                unsigned min = UINT_MAX;
                int qscale = 1;
                int mb = y * ctx->m.mb_width + x;
                int rc = 0;
                for (q = 1; q < avctx->qmax; q++) {
                    int i = (q*ctx->m.mb_num) + mb;
                    unsigned score = ctx->mb_rc[i].bits * lambda +
                                     ((unsigned) ctx->mb_rc[i].ssd << LAMBDA_FRAC_BITS);
                    if (score < min) {
                        min = score;
                        qscale = q;
                        rc = i;
                    }
                }
                bits += ctx->mb_rc[rc].bits;
                ctx->mb_qscale[mb] = qscale;
                ctx->mb_bits[mb] = ctx->mb_rc[rc].bits;
            }
            bits = (bits + 31) & ~31;
            if (bits > ctx->frame_bits)
                break;
        }
        if (end) {
            if (bits > ctx->frame_bits)
                return AVERROR(EINVAL);
            break;
        }
        if (bits < ctx->frame_bits) {
            last_lower = FFMIN(lambda, last_lower);
            if (last_higher != 0)
                lambda = (lambda+last_higher)>>1;
            else
                lambda -= down_step;
            down_step = FFMIN((int64_t)down_step*5, INT_MAX);
            up_step = 1<<LAMBDA_FRAC_BITS;
            lambda = FFMAX(1, lambda);
            if (lambda == last_lower)
                break;
        } else {
            last_higher = FFMAX(lambda, last_higher);
            if (last_lower != INT_MAX)
                lambda = (lambda+last_lower)>>1;
            else if ((int64_t)lambda + up_step > INT_MAX)
                return AVERROR(EINVAL);
            else
                lambda += up_step;
            up_step = FFMIN((int64_t)up_step*5, INT_MAX);
            down_step = 1<<LAMBDA_FRAC_BITS;
        }
    }
    ctx->lambda = lambda;
    return 0;
}
