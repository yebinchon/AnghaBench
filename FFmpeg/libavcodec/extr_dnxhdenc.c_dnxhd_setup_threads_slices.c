
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mb_height; int mb_width; } ;
struct TYPE_5__ {int* slice_offs; int* slice_size; scalar_t__* mb_bits; TYPE_1__ m; } ;
typedef TYPE_2__ DNXHDEncContext ;



__attribute__((used)) static void dnxhd_setup_threads_slices(DNXHDEncContext *ctx)
{
    int mb_y, mb_x;
    int offset = 0;
    for (mb_y = 0; mb_y < ctx->m.mb_height; mb_y++) {
        int thread_size;
        ctx->slice_offs[mb_y] = offset;
        ctx->slice_size[mb_y] = 0;
        for (mb_x = 0; mb_x < ctx->m.mb_width; mb_x++) {
            unsigned mb = mb_y * ctx->m.mb_width + mb_x;
            ctx->slice_size[mb_y] += ctx->mb_bits[mb];
        }
        ctx->slice_size[mb_y] = (ctx->slice_size[mb_y] + 31) & ~31;
        ctx->slice_size[mb_y] >>= 3;
        thread_size = ctx->slice_size[mb_y];
        offset += thread_size;
    }
}
