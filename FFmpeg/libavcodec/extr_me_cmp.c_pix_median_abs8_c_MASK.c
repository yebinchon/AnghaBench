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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  MpegEncContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline int FUNC3(MpegEncContext *v, uint8_t *pix1, uint8_t *pix2,
                             ptrdiff_t stride, int h)
{
    int s = 0, i, j;

#define V(x) (pix1[x] - pix2[x])

    s    += FUNC1(V(0));
    s    += FUNC1(V(1) - V(0));
    s    += FUNC1(V(2) - V(1));
    s    += FUNC1(V(3) - V(2));
    s    += FUNC1(V(4) - V(3));
    s    += FUNC1(V(5) - V(4));
    s    += FUNC1(V(6) - V(5));
    s    += FUNC1(V(7) - V(6));

    pix1 += stride;
    pix2 += stride;

    for (i = 1; i < h; i++) {
        s    += FUNC1(V(0) - V(-stride));
        for (j = 1; j < 8; j++)
            s    += FUNC1(V(j) - FUNC2(V(j-stride), V(j-1), V(j-stride) + V(j-1) - V(j-stride-1)));
        pix1 += stride;
        pix2 += stride;

    }
#undef V
    return s;
}