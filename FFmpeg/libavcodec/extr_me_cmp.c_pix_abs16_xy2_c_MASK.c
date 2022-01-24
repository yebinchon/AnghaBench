#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  ptrdiff_t ;
typedef  int /*<<< orphan*/  MpegEncContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC2(MpegEncContext *v, uint8_t *pix1, uint8_t *pix2,
                           ptrdiff_t stride, int h)
{
    int s = 0, i;
    uint8_t *pix3 = pix2 + stride;

    for (i = 0; i < h; i++) {
        s    += FUNC0(pix1[0]  - FUNC1(pix2[0],  pix2[1],  pix3[0],  pix3[1]));
        s    += FUNC0(pix1[1]  - FUNC1(pix2[1],  pix2[2],  pix3[1],  pix3[2]));
        s    += FUNC0(pix1[2]  - FUNC1(pix2[2],  pix2[3],  pix3[2],  pix3[3]));
        s    += FUNC0(pix1[3]  - FUNC1(pix2[3],  pix2[4],  pix3[3],  pix3[4]));
        s    += FUNC0(pix1[4]  - FUNC1(pix2[4],  pix2[5],  pix3[4],  pix3[5]));
        s    += FUNC0(pix1[5]  - FUNC1(pix2[5],  pix2[6],  pix3[5],  pix3[6]));
        s    += FUNC0(pix1[6]  - FUNC1(pix2[6],  pix2[7],  pix3[6],  pix3[7]));
        s    += FUNC0(pix1[7]  - FUNC1(pix2[7],  pix2[8],  pix3[7],  pix3[8]));
        s    += FUNC0(pix1[8]  - FUNC1(pix2[8],  pix2[9],  pix3[8],  pix3[9]));
        s    += FUNC0(pix1[9]  - FUNC1(pix2[9],  pix2[10], pix3[9],  pix3[10]));
        s    += FUNC0(pix1[10] - FUNC1(pix2[10], pix2[11], pix3[10], pix3[11]));
        s    += FUNC0(pix1[11] - FUNC1(pix2[11], pix2[12], pix3[11], pix3[12]));
        s    += FUNC0(pix1[12] - FUNC1(pix2[12], pix2[13], pix3[12], pix3[13]));
        s    += FUNC0(pix1[13] - FUNC1(pix2[13], pix2[14], pix3[13], pix3[14]));
        s    += FUNC0(pix1[14] - FUNC1(pix2[14], pix2[15], pix3[14], pix3[15]));
        s    += FUNC0(pix1[15] - FUNC1(pix2[15], pix2[16], pix3[15], pix3[16]));
        pix1 += stride;
        pix2 += stride;
        pix3 += stride;
    }
    return s;
}