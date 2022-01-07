
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int coded_width; int coded_height; TYPE_1__* priv_data; } ;
struct TYPE_6__ {int* linesize; int ** data; } ;
struct TYPE_5__ {int slice_count; int uncompress_pix_size; int tex_rat; int tex_rat2; int (* tex_fun2 ) (int *,int,int const*) ;int (* tex_fun ) (int *,int,int const*) ;int * tex_data; } ;
typedef TYPE_1__ HapContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 scalar_t__ FFMIN (int,int) ;
 int TEXTURE_BLOCK_H ;
 int TEXTURE_BLOCK_W ;
 int stub1 (int *,int,int const*) ;
 int stub2 (int *,int,int const*) ;

__attribute__((used)) static int decompress_texture_thread_internal(AVCodecContext *avctx, void *arg,
                                              int slice, int thread_nb, int texture_num)
{
    HapContext *ctx = avctx->priv_data;
    AVFrame *frame = arg;
    const uint8_t *d = ctx->tex_data;
    int w_block = avctx->coded_width / TEXTURE_BLOCK_W;
    int h_block = avctx->coded_height / TEXTURE_BLOCK_H;
    int x, y;
    int start_slice, end_slice;
    int base_blocks_per_slice = h_block / ctx->slice_count;
    int remainder_blocks = h_block % ctx->slice_count;




    start_slice = slice * base_blocks_per_slice;

    start_slice += FFMIN(slice, remainder_blocks);

    end_slice = start_slice + base_blocks_per_slice;

    if (slice < remainder_blocks)
        end_slice++;

    for (y = start_slice; y < end_slice; y++) {
        uint8_t *p = frame->data[0] + y * frame->linesize[0] * TEXTURE_BLOCK_H;
        int off = y * w_block;
        for (x = 0; x < w_block; x++) {
            if (texture_num == 0) {
                ctx->tex_fun(p + x * 4 * ctx->uncompress_pix_size, frame->linesize[0],
                             d + (off + x) * ctx->tex_rat);
            } else {
                ctx->tex_fun2(p + x * 4 * ctx->uncompress_pix_size, frame->linesize[0],
                              d + (off + x) * ctx->tex_rat2);
            }
        }
    }

    return 0;
}
