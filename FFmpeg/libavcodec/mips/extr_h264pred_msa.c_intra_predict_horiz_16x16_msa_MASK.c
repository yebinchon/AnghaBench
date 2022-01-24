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
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(uint8_t *src, int32_t src_stride,
                                          uint8_t *dst, int32_t dst_stride)
{
    uint8_t inp0, inp1, inp2, inp3;
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7;
    v16u8 src8, src9, src10, src11, src12, src13, src14, src15;

    inp0 = src[0 * src_stride];
    inp1 = src[1 * src_stride];
    inp2 = src[2 * src_stride];
    inp3 = src[3 * src_stride];
    src0 = (v16u8) FUNC1(inp0);
    src1 = (v16u8) FUNC1(inp1);
    src2 = (v16u8) FUNC1(inp2);
    src3 = (v16u8) FUNC1(inp3);
    inp0 = src[4 * src_stride];
    inp1 = src[5 * src_stride];
    inp2 = src[6 * src_stride];
    inp3 = src[7 * src_stride];
    src4 = (v16u8) FUNC1(inp0);
    src5 = (v16u8) FUNC1(inp1);
    src6 = (v16u8) FUNC1(inp2);
    src7 = (v16u8) FUNC1(inp3);
    inp0 = src[ 8 * src_stride];
    inp1 = src[ 9 * src_stride];
    inp2 = src[10 * src_stride];
    inp3 = src[11 * src_stride];
    src8 = (v16u8) FUNC1(inp0);
    src9 = (v16u8) FUNC1(inp1);
    src10 = (v16u8) FUNC1(inp2);
    src11 = (v16u8) FUNC1(inp3);
    inp0 = src[12 * src_stride];
    inp1 = src[13 * src_stride];
    inp2 = src[14 * src_stride];
    inp3 = src[15 * src_stride];
    src12 = (v16u8) FUNC1(inp0);
    src13 = (v16u8) FUNC1(inp1);
    src14 = (v16u8) FUNC1(inp2);
    src15 = (v16u8) FUNC1(inp3);

    FUNC0(src0, src1, src2, src3, src4, src5, src6, src7, dst, dst_stride);
    dst += (8 * dst_stride);
    FUNC0(src8, src9, src10, src11, src12, src13, src14, src15,
           dst, dst_stride);
}