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
typedef  int v8i16 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(const uint8_t *src_top,
                                            const uint8_t *src_left,
                                            uint8_t *dst, int32_t stride,
                                            int32_t flag)
{
    uint8_t *tmp_dst = dst;
    uint32_t row;
    uint8_t inp0, inp1, inp2, inp3;
    v16i8 src0, src1, src2, src3;
    v8i16 src0_r, src0_l, src_left_val, src_top_val;

    src_left_val = FUNC8(src_left[0]);

    for (row = 4; row--;) {
        inp0 = src_left[0];
        inp1 = src_left[1];
        inp2 = src_left[2];
        inp3 = src_left[3];
        src_left += 4;

        src0 = FUNC7(inp0);
        src1 = FUNC7(inp1);
        src2 = FUNC7(inp2);
        src3 = FUNC7(inp3);

        FUNC4(src0, src1, src2, src3, tmp_dst, stride);
        tmp_dst += (4 * stride);
    }

    if (0 == flag) {
        src0 = FUNC2(src_top);
        src_top_val = FUNC8(src_top[-1]);

        FUNC6(src0, src0_r, src0_l);
        FUNC5(src0_r, src_top_val, src0_l, src_top_val, src0_r, src0_l);

        src0_r >>= 1;
        src0_l >>= 1;

        FUNC0(src0_r, src_left_val, src0_l, src_left_val, src0_r, src0_l);
        FUNC1(src0_r, src0_l);
        src0 = FUNC9((v16i8) src0_l, (v16i8) src0_r);
        FUNC3(src0, dst);
    }
}