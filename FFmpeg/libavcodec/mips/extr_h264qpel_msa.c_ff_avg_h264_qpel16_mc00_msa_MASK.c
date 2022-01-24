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
typedef  int ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

void FUNC3(uint8_t *dst, const uint8_t *src,
                                 ptrdiff_t stride)
{
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7;
    v16u8 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7;

    FUNC1(src, stride, src0, src1, src2, src3, src4, src5, src6, src7);
    src += (8 * stride);
    FUNC1(dst, stride, dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7);

    FUNC0(src0, dst0, src1, dst1, src2, dst2, src3, dst3, dst0, dst1,
                dst2, dst3);
    FUNC0(src4, dst4, src5, dst5, src6, dst6, src7, dst7, dst4, dst5,
                dst6, dst7);
    FUNC2(dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7, dst, stride);
    dst += (8 * stride);

    FUNC1(src, stride, src0, src1, src2, src3, src4, src5, src6, src7);
    FUNC1(dst, stride, dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7);

    FUNC0(src0, dst0, src1, dst1, src2, dst2, src3, dst3, dst0, dst1,
                dst2, dst3);
    FUNC0(src4, dst4, src5, dst5, src6, dst6, src7, dst7, dst4, dst5,
                dst6, dst7);
    FUNC2(dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7, dst, stride);
}