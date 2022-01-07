
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int (* add_median_pred ) (int*,int*,int*,int,int*,int*) ;} ;
struct TYPE_7__ {int* val; TYPE_1__ llviddsp; } ;
typedef TYPE_2__ VBLEContext ;
struct TYPE_8__ {int** data; int* linesize; } ;
typedef int GetBitContext ;
typedef TYPE_3__ AVFrame ;


 int get_bits (int *,int) ;
 int stub1 (int*,int*,int*,int,int*,int*) ;

__attribute__((used)) static void vble_restore_plane(VBLEContext *ctx, AVFrame *pic,
                               GetBitContext *gb, int plane,
                               int offset, int width, int height)
{
    uint8_t *dst = pic->data[plane];
    uint8_t *val = ctx->val + offset;
    int stride = pic->linesize[plane];
    int i, j, left, left_top;

    for (i = 0; i < height; i++) {
        for (j = 0; j < width; j++) {

            if (val[j]) {
                int v = (1 << val[j]) + get_bits(gb, val[j]) - 1;
                val[j] = (v >> 1) ^ -(v & 1);
            }
        }
        if (i) {
            left = 0;
            left_top = dst[-stride];
            ctx->llviddsp.add_median_pred(dst, dst - stride, val,
                                          width, &left, &left_top);
        } else {
            dst[0] = val[0];
            for (j = 1; j < width; j++)
                dst[j] = val[j] + dst[j - 1];
        }
        dst += stride;
        val += width;
    }
}
