#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int ptrdiff_t ;
struct TYPE_4__ {int (* add_left_pred ) (int*,int*,int,int) ;int /*<<< orphan*/  (* add_median_pred ) (int*,int*,int*,int,int*,int*) ;} ;
struct TYPE_5__ {TYPE_1__ llviddsp; } ;
typedef  TYPE_2__ UtvideoContext ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int,int,int) ; 
 int FUNC2 (int*,int*,int,int) ; 
 int FUNC3 (int*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,int*,int,int*,int*) ; 

__attribute__((used)) static void FUNC8(UtvideoContext *c, uint8_t *src, ptrdiff_t stride,
                                     int width, int height, int slices, int rmode)
{
    int i, j, slice;
    int A, B, C;
    uint8_t *bsrc;
    int slice_start, slice_height;
    const int cmask   = ~(rmode ? 3 : 1);
    const ptrdiff_t stride2 = stride << 1;

    for (slice = 0; slice < slices; slice++) {
        slice_start    = ((slice * height) / slices) & cmask;
        slice_height   = ((((slice + 1) * height) / slices) & cmask) -
                         slice_start;
        slice_height >>= 1;
        if (!slice_height)
            continue;

        bsrc = src + slice_start * stride;

        // first line - left neighbour prediction
        bsrc[0] += 0x80;
        A = c->llviddsp.add_left_pred(bsrc, bsrc, width, 0);
        c->llviddsp.add_left_pred(bsrc + stride, bsrc + stride, width, A);
        bsrc += stride2;
        if (slice_height <= 1)
            continue;
        // second line - first element has top prediction, the rest uses median
        C        = bsrc[-stride2];
        bsrc[0] += C;
        A        = bsrc[0];
        for (i = 1; i < FUNC0(width, 16); i++) { /* scalar loop (DSP need align 16) */
            B        = bsrc[i - stride2];
            bsrc[i] += FUNC1(A, B, (uint8_t)(A + B - C));
            C        = B;
            A        = bsrc[i];
        }
        if (width > 16)
            c->llviddsp.add_median_pred(bsrc + 16, bsrc - stride2 + 16,
                                        bsrc + 16, width - 16, &A, &B);

        c->llviddsp.add_median_pred(bsrc + stride, bsrc - stride,
                                        bsrc + stride, width, &A, &B);
        bsrc += stride2;
        // the rest of lines use continuous median prediction
        for (j = 2; j < slice_height; j++) {
            c->llviddsp.add_median_pred(bsrc, bsrc - stride2,
                                            bsrc, width, &A, &B);
            c->llviddsp.add_median_pred(bsrc + stride, bsrc - stride,
                                            bsrc + stride, width, &A, &B);
            bsrc += stride2;
        }
    }
}