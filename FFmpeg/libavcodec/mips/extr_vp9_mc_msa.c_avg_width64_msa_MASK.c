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
typedef  int /*<<< orphan*/  v16u8 ;
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC3(const uint8_t *src, int32_t src_stride,
                            uint8_t *dst, int32_t dst_stride,
                            int32_t height)
{
    int32_t cnt;
    uint8_t *dst_dup = dst;
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7;
    v16u8 src8, src9, src10, src11, src12, src13, src14, src15;
    v16u8 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7;
    v16u8 dst8, dst9, dst10, dst11, dst12, dst13, dst14, dst15;

    for (cnt = (height / 4); cnt--;) {
        FUNC1(src, 16, src0, src1, src2, src3);
        src += src_stride;
        FUNC1(src, 16, src4, src5, src6, src7);
        src += src_stride;
        FUNC1(src, 16, src8, src9, src10, src11);
        src += src_stride;
        FUNC1(src, 16, src12, src13, src14, src15);
        src += src_stride;

        FUNC1(dst_dup, 16, dst0, dst1, dst2, dst3);
        dst_dup += dst_stride;
        FUNC1(dst_dup, 16, dst4, dst5, dst6, dst7);
        dst_dup += dst_stride;
        FUNC1(dst_dup, 16, dst8, dst9, dst10, dst11);
        dst_dup += dst_stride;
        FUNC1(dst_dup, 16, dst12, dst13, dst14, dst15);
        dst_dup += dst_stride;

        FUNC0(src0, dst0, src1, dst1, src2, dst2, src3, dst3,
                    dst0, dst1, dst2, dst3);
        FUNC0(src4, dst4, src5, dst5, src6, dst6, src7, dst7,
                    dst4, dst5, dst6, dst7);
        FUNC0(src8, dst8, src9, dst9, src10, dst10, src11, dst11,
                    dst8, dst9, dst10, dst11);
        FUNC0(src12, dst12, src13, dst13, src14, dst14, src15, dst15,
                    dst12, dst13, dst14, dst15);

        FUNC2(dst0, dst1, dst2, dst3, dst, 16);
        dst += dst_stride;
        FUNC2(dst4, dst5, dst6, dst7, dst, 16);
        dst += dst_stride;
        FUNC2(dst8, dst9, dst10, dst11, dst, 16);
        dst += dst_stride;
        FUNC2(dst12, dst13, dst14, dst15, dst, 16);
        dst += dst_stride;
    }
}