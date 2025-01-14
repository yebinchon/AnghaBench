
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ptrdiff_t ;
typedef int int64_t ;
typedef int int16_t ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int ** filter; } ;
typedef TYPE_1__ PixletContext ;
typedef TYPE_2__ AVCodecContext ;


 unsigned int NB_LEVELS ;
 int filterfn (int *,int *,unsigned int,int ) ;

__attribute__((used)) static void reconstruction(AVCodecContext *avctx, int16_t *dest,
                           unsigned width, unsigned height, ptrdiff_t stride,
                           int64_t *scaling_h, int64_t *scaling_v)
{
    PixletContext *ctx = avctx->priv_data;
    unsigned scaled_width, scaled_height;
    int16_t *ptr, *tmp;
    int i, j, k;

    scaled_width = width >> NB_LEVELS;
    scaled_height = height >> NB_LEVELS;
    tmp = ctx->filter[0];

    for (i = 0; i < NB_LEVELS; i++) {
        int64_t scale_v = scaling_v[i];
        int64_t scale_h = scaling_h[i];
        scaled_width <<= 1;
        scaled_height <<= 1;

        ptr = dest;
        for (j = 0; j < scaled_height; j++) {
            filterfn(ptr, ctx->filter[1], scaled_width, scale_v);
            ptr += stride;
        }

        for (j = 0; j < scaled_width; j++) {
            ptr = dest + j;
            for (k = 0; k < scaled_height; k++) {
                tmp[k] = *ptr;
                ptr += stride;
            }

            filterfn(tmp, ctx->filter[1], scaled_height, scale_h);

            ptr = dest + j;
            for (k = 0; k < scaled_height; k++) {
                *ptr = tmp[k];
                ptr += stride;
            }
        }
    }
}
