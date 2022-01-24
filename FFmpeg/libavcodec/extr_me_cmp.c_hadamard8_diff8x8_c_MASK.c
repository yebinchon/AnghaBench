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
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  MpegEncContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(MpegEncContext *s, uint8_t *dst,
                               uint8_t *src, ptrdiff_t stride, int h)
{
    int i, temp[64], sum = 0;

    FUNC3(h == 8);

    for (i = 0; i < 8; i++) {
        // FIXME: try pointer walks
        FUNC1(temp[8 * i + 0], temp[8 * i + 1],
                   src[stride * i + 0] - dst[stride * i + 0],
                   src[stride * i + 1] - dst[stride * i + 1]);
        FUNC1(temp[8 * i + 2], temp[8 * i + 3],
                   src[stride * i + 2] - dst[stride * i + 2],
                   src[stride * i + 3] - dst[stride * i + 3]);
        FUNC1(temp[8 * i + 4], temp[8 * i + 5],
                   src[stride * i + 4] - dst[stride * i + 4],
                   src[stride * i + 5] - dst[stride * i + 5]);
        FUNC1(temp[8 * i + 6], temp[8 * i + 7],
                   src[stride * i + 6] - dst[stride * i + 6],
                   src[stride * i + 7] - dst[stride * i + 7]);

        FUNC0(temp[8 * i + 0], temp[8 * i + 2]);
        FUNC0(temp[8 * i + 1], temp[8 * i + 3]);
        FUNC0(temp[8 * i + 4], temp[8 * i + 6]);
        FUNC0(temp[8 * i + 5], temp[8 * i + 7]);

        FUNC0(temp[8 * i + 0], temp[8 * i + 4]);
        FUNC0(temp[8 * i + 1], temp[8 * i + 5]);
        FUNC0(temp[8 * i + 2], temp[8 * i + 6]);
        FUNC0(temp[8 * i + 3], temp[8 * i + 7]);
    }

    for (i = 0; i < 8; i++) {
        FUNC0(temp[8 * 0 + i], temp[8 * 1 + i]);
        FUNC0(temp[8 * 2 + i], temp[8 * 3 + i]);
        FUNC0(temp[8 * 4 + i], temp[8 * 5 + i]);
        FUNC0(temp[8 * 6 + i], temp[8 * 7 + i]);

        FUNC0(temp[8 * 0 + i], temp[8 * 2 + i]);
        FUNC0(temp[8 * 1 + i], temp[8 * 3 + i]);
        FUNC0(temp[8 * 4 + i], temp[8 * 6 + i]);
        FUNC0(temp[8 * 5 + i], temp[8 * 7 + i]);

        sum += FUNC2(temp[8 * 0 + i], temp[8 * 4 + i]) +
               FUNC2(temp[8 * 1 + i], temp[8 * 5 + i]) +
               FUNC2(temp[8 * 2 + i], temp[8 * 6 + i]) +
               FUNC2(temp[8 * 3 + i], temp[8 * 7 + i]);
    }
    return sum;
}