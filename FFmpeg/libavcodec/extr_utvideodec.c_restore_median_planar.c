
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ptrdiff_t ;
struct TYPE_4__ {int (* add_median_pred ) (int*,int*,int*,int,int*,int*) ;int (* add_left_pred ) (int*,int*,int,int ) ;} ;
struct TYPE_5__ {TYPE_1__ llviddsp; } ;
typedef TYPE_2__ UtvideoContext ;


 int FFMIN (int,int) ;
 scalar_t__ mid_pred (int,int,int) ;
 int stub1 (int*,int*,int,int ) ;
 int stub2 (int*,int*,int*,int,int*,int*) ;
 int stub3 (int*,int*,int*,int,int*,int*) ;

__attribute__((used)) static void restore_median_planar(UtvideoContext *c, uint8_t *src, ptrdiff_t stride,
                                  int width, int height, int slices, int rmode)
{
    int i, j, slice;
    int A, B, C;
    uint8_t *bsrc;
    int slice_start, slice_height;
    const int cmask = ~rmode;

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

        C = bsrc[-stride];
        bsrc[0] += C;
        A = bsrc[0];
        for (i = 1; i < FFMIN(width, 16); i++) {
            B = bsrc[i - stride];
            bsrc[i] += mid_pred(A, B, (uint8_t)(A + B - C));
            C = B;
            A = bsrc[i];
        }
        if (width > 16)
            c->llviddsp.add_median_pred(bsrc + 16, bsrc - stride + 16,
                                        bsrc + 16, width - 16, &A, &B);

        bsrc += stride;

        for (j = 2; j < slice_height; j++) {
            c->llviddsp.add_median_pred(bsrc, bsrc - stride,
                                            bsrc, width, &A, &B);
            bsrc += stride;
        }
    }
}
