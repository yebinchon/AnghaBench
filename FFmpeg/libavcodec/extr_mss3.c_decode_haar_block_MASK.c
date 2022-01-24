#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ptrdiff_t ;
struct TYPE_3__ {int scale; int /*<<< orphan*/  coef_hi_model; int /*<<< orphan*/  coef_model; } ;
typedef  int /*<<< orphan*/  RangeCoder ;
typedef  TYPE_1__ HaarBlockCoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(RangeCoder *c, HaarBlockCoder *hc,
                              uint8_t *dst, ptrdiff_t stride,
                              int block_size, int *block)
{
    const int hsize = block_size >> 1;
    int A, B, C, D, t1, t2, t3, t4;
    int i, j;

    for (j = 0; j < block_size; j++) {
        for (i = 0; i < block_size; i++) {
            if (i < hsize && j < hsize)
                block[i] = FUNC2(c, &hc->coef_model);
            else
                block[i] = FUNC1(c, &hc->coef_hi_model);
            block[i] *= hc->scale;
        }
        block += block_size;
    }
    block -= block_size * block_size;

    for (j = 0; j < hsize; j++) {
        for (i = 0; i < hsize; i++) {
            A = block[i];
            B = block[i + hsize];
            C = block[i + hsize * block_size];
            D = block[i + hsize * block_size + hsize];

            t1 = A - B;
            t2 = C - D;
            t3 = A + B;
            t4 = C + D;
            dst[i * 2]              = FUNC0(t1 - t2);
            dst[i * 2 + stride]     = FUNC0(t1 + t2);
            dst[i * 2 + 1]          = FUNC0(t3 - t4);
            dst[i * 2 + 1 + stride] = FUNC0(t3 + t4);
        }
        block += block_size;
        dst   += stride * 2;
    }
}