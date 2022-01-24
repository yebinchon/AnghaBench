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

__attribute__((used)) static inline int FUNC1(MpegEncContext *v, uint8_t *pix1, uint8_t *pix2,
                             ptrdiff_t stride, int h)
{
    int s = 0, i;

    for (i = 0; i < h; i++) {
        s    += FUNC0(pix1[0] - pix2[0]);
        s    += FUNC0(pix1[1] - pix2[1]);
        s    += FUNC0(pix1[2] - pix2[2]);
        s    += FUNC0(pix1[3] - pix2[3]);
        s    += FUNC0(pix1[4] - pix2[4]);
        s    += FUNC0(pix1[5] - pix2[5]);
        s    += FUNC0(pix1[6] - pix2[6]);
        s    += FUNC0(pix1[7] - pix2[7]);
        pix1 += stride;
        pix2 += stride;
    }
    return s;
}