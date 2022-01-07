
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_10__ {int* last_dc; int mb_width; int (* dct_quantize ) (TYPE_3__*,int *,int,int,int*) ;int pb; } ;
struct TYPE_9__ {scalar_t__ pix_fmt; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int data_offset; int* slice_offs; int bit_depth; int* mb_qscale; int is_444; TYPE_3__ m; int ** blocks; int * slice_size; struct TYPE_8__** thread; } ;
typedef TYPE_1__ DNXHDEncContext ;
typedef TYPE_2__ AVCodecContext ;


 scalar_t__ AV_PIX_FMT_YUV444P10 ;
 int dnxhd_encode_block (TYPE_1__*,int *,int,int) ;
 int dnxhd_get_blocks (TYPE_1__*,int,int) ;
 int dnxhd_switch_matrix (TYPE_1__*,int) ;
 int flush_put_bits (int *) ;
 int init_put_bits (int *,int *,int ) ;
 int put_bits (int *,int,int) ;
 int put_bits_count (int *) ;
 int stub1 (TYPE_3__*,int *,int,int,int*) ;

__attribute__((used)) static int dnxhd_encode_thread(AVCodecContext *avctx, void *arg,
                               int jobnr, int threadnr)
{
    DNXHDEncContext *ctx = avctx->priv_data;
    int mb_y = jobnr, mb_x;
    ctx = ctx->thread[threadnr];
    init_put_bits(&ctx->m.pb, (uint8_t *)arg + ctx->data_offset + ctx->slice_offs[jobnr],
                  ctx->slice_size[jobnr]);

    ctx->m.last_dc[0] =
    ctx->m.last_dc[1] =
    ctx->m.last_dc[2] = 1 << (ctx->bit_depth + 2);
    for (mb_x = 0; mb_x < ctx->m.mb_width; mb_x++) {
        unsigned mb = mb_y * ctx->m.mb_width + mb_x;
        int qscale = ctx->mb_qscale[mb];
        int i;

        put_bits(&ctx->m.pb, 11, qscale);
        put_bits(&ctx->m.pb, 1, avctx->pix_fmt == AV_PIX_FMT_YUV444P10);

        dnxhd_get_blocks(ctx, mb_x, mb_y);

        for (i = 0; i < 8 + 4 * ctx->is_444; i++) {
            int16_t *block = ctx->blocks[i];
            int overflow, n = dnxhd_switch_matrix(ctx, i);
            int last_index = ctx->m.dct_quantize(&ctx->m, block,
                                                 ctx->is_444 ? (((i >> 1) % 3) < 1 ? 0 : 4): 4 & (2*i),
                                                 qscale, &overflow);

            dnxhd_encode_block(ctx, block, last_index, n);

        }
    }
    if (put_bits_count(&ctx->m.pb) & 31)
        put_bits(&ctx->m.pb, 32 - (put_bits_count(&ctx->m.pb) & 31), 0);
    flush_put_bits(&ctx->m.pb);
    return 0;
}
