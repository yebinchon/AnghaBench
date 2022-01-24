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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  ptrdiff_t ;
typedef  int /*<<< orphan*/  prev_line ;
struct TYPE_3__ {int /*<<< orphan*/  esc_model; int /*<<< orphan*/ * vq_model; int /*<<< orphan*/  vec_entry_model; int /*<<< orphan*/  vec_size_model; } ;
typedef  int /*<<< orphan*/  RangeCoder ;
typedef  TYPE_1__ ImageBlockCoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(RangeCoder *c, ImageBlockCoder *ic,
                               uint8_t *dst, ptrdiff_t stride, int block_size)
{
    int i, j;
    int vec_size;
    int vec[4];
    int prev_line[16];
    int A, B, C;

    vec_size = FUNC2(c, &ic->vec_size_model) + 2;
    for (i = 0; i < vec_size; i++)
        vec[i] = FUNC1(c, &ic->vec_entry_model);
    for (; i < 4; i++)
        vec[i] = 0;
    FUNC0(prev_line, 0, sizeof(prev_line));

    for (j = 0; j < block_size; j++) {
        A = 0;
        B = 0;
        for (i = 0; i < block_size; i++) {
            C = B;
            B = prev_line[i];
            A = FUNC2(c, &ic->vq_model[A + B * 5 + C * 25]);

            prev_line[i] = A;
            if (A < 4)
               dst[i] = vec[A];
            else
               dst[i] = FUNC1(c, &ic->esc_model);
        }
        dst += stride;
    }
}