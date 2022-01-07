
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ptrdiff_t ;
struct TYPE_4__ {int (* add_gradient_pred ) (int*,int,int) ;int (* add_left_pred ) (int*,int*,int,int ) ;} ;
struct TYPE_5__ {TYPE_1__ llviddsp; } ;
typedef TYPE_2__ UtvideoContext ;


 int FFMIN (int,int) ;
 int stub1 (int*,int*,int,int ) ;
 int stub2 (int*,int,int) ;

__attribute__((used)) static void restore_gradient_planar(UtvideoContext *c, uint8_t *src, ptrdiff_t stride,
                                    int width, int height, int slices, int rmode)
{
    int i, j, slice;
    int A, B, C;
    uint8_t *bsrc;
    int slice_start, slice_height;
    const int cmask = ~rmode;
    int min_width = FFMIN(width, 32);

    for (slice = 0; slice < slices; slice++) {
        slice_start = ((slice * height) / slices) & cmask;
        slice_height = ((((slice + 1) * height) / slices) & cmask) -
                       slice_start;

        if (!slice_height)
            continue;
        bsrc = src + slice_start * stride;


        bsrc[0] += 0x80;
        c->llviddsp.add_left_pred(bsrc, bsrc, width, 0);
        bsrc += stride;
        if (slice_height <= 1)
            continue;
        for (j = 1; j < slice_height; j++) {

            bsrc[0] = (bsrc[0] + bsrc[-stride]) & 0xFF;
            for (i = 1; i < min_width; i++) {
                A = bsrc[i - stride];
                B = bsrc[i - (stride + 1)];
                C = bsrc[i - 1];
                bsrc[i] = (A - B + C + bsrc[i]) & 0xFF;
            }
            if (width > 32)
                c->llviddsp.add_gradient_pred(bsrc + 32, stride, width - 32);
            bsrc += stride;
        }
    }
}
