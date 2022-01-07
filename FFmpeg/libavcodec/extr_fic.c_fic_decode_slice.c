
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {TYPE_3__* priv_data; } ;
struct TYPE_9__ {int aligned_width; TYPE_1__* frame; } ;
struct TYPE_8__ {int slice_h; int src_size; int y_off; int p_frame; int block; int * src; } ;
struct TYPE_7__ {int* linesize; int ** data; } ;
typedef int GetBitContext ;
typedef TYPE_2__ FICThreadContext ;
typedef TYPE_3__ FICContext ;
typedef TYPE_4__ AVCodecContext ;


 int fic_decode_block (TYPE_3__*,int *,int *,int,int ,int *) ;
 int init_get_bits8 (int *,int *,int) ;

__attribute__((used)) static int fic_decode_slice(AVCodecContext *avctx, void *tdata)
{
    FICContext *ctx = avctx->priv_data;
    FICThreadContext *tctx = tdata;
    GetBitContext gb;
    uint8_t *src = tctx->src;
    int slice_h = tctx->slice_h;
    int src_size = tctx->src_size;
    int y_off = tctx->y_off;
    int x, y, p, ret;

    ret = init_get_bits8(&gb, src, src_size);
    if (ret < 0)
        return ret;

    for (p = 0; p < 3; p++) {
        int stride = ctx->frame->linesize[p];
        uint8_t* dst = ctx->frame->data[p] + (y_off >> !!p) * stride;

        for (y = 0; y < (slice_h >> !!p); y += 8) {
            for (x = 0; x < (ctx->aligned_width >> !!p); x += 8) {
                int ret;

                if ((ret = fic_decode_block(ctx, &gb, dst + x, stride,
                                            tctx->block, &tctx->p_frame)) != 0)
                    return ret;
            }

            dst += 8 * stride;
        }
    }

    return 0;
}
