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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(const uint8_t *src,
                                             int32_t src_stride,
                                             uint8_t *dst,
                                             int32_t dst_stride)
{
    v16u8 inp0, inp1, inp2, inp3, inp4, inp5, inp6, inp7, inp8;
    v16u8 inp9, inp10, inp11, inp12, inp13, inp14, inp15, inp16;
    v16u8 res0;
    v16u8 const20 = (v16u8) FUNC5(20);
    v16u8 const6 = (v16u8) FUNC5(6);
    v16u8 const3 = (v16u8) FUNC5(3);

    FUNC2(src, src_stride, inp0, inp1, inp2, inp3);
    src += (4 * src_stride);
    inp4 = FUNC1(src);
    src += src_stride;
    res0 = FUNC0(inp0, inp0, inp1, inp2,
                                  inp1, inp2, inp3, inp4,
                                  const20, const6, const3);
    res0 = FUNC4(res0, inp1);
    FUNC3(res0, dst);
    dst += dst_stride;

    inp5 = FUNC1(src);
    src += src_stride;
    res0 = FUNC0(inp1, inp0, inp0, inp1,
                                  inp2, inp3, inp4, inp5,
                                  const20, const6, const3);
    res0 = FUNC4(res0, inp2);
    FUNC3(res0, dst);
    dst += dst_stride;

    inp6 = FUNC1(src);
    src += src_stride;
    res0 = FUNC0(inp2, inp1, inp0, inp0,
                                  inp3, inp4, inp5, inp6,
                                  const20, const6, const3);
    res0 = FUNC4(res0, inp3);
    FUNC3(res0, dst);
    dst += dst_stride;

    inp7 = FUNC1(src);
    src += src_stride;
    res0 = FUNC0(inp3, inp2, inp1, inp0,
                                  inp4, inp5, inp6, inp7,
                                  const20, const6, const3);
    res0 = FUNC4(res0, inp4);
    FUNC3(res0, dst);
    dst += dst_stride;

    inp8 = FUNC1(src);
    src += src_stride;
    res0 = FUNC0(inp4, inp3, inp2, inp1,
                                  inp5, inp6, inp7, inp8,
                                  const20, const6, const3);
    res0 = FUNC4(res0, inp5);
    FUNC3(res0, dst);
    dst += dst_stride;

    inp9 = FUNC1(src);
    src += src_stride;
    res0 = FUNC0(inp5, inp4, inp3, inp2,
                                  inp6, inp7, inp8, inp9,
                                  const20, const6, const3);
    res0 = FUNC4(res0, inp6);
    FUNC3(res0, dst);
    dst += dst_stride;

    inp10 = FUNC1(src);
    src += src_stride;
    res0 = FUNC0(inp6, inp5, inp4, inp3,
                                  inp7, inp8, inp9, inp10,
                                  const20, const6, const3);
    res0 = FUNC4(res0, inp7);
    FUNC3(res0, dst);
    dst += dst_stride;

    inp11 = FUNC1(src);
    src += src_stride;
    res0 = FUNC0(inp7, inp6, inp5, inp4,
                                  inp8, inp9, inp10, inp11,
                                  const20, const6, const3);
    res0 = FUNC4(res0, inp8);
    FUNC3(res0, dst);
    dst += dst_stride;

    inp12 = FUNC1(src);
    src += src_stride;
    res0 = FUNC0(inp8, inp7, inp6, inp5,
                                  inp9, inp10, inp11, inp12,
                                  const20, const6, const3);
    res0 = FUNC4(res0, inp9);
    FUNC3(res0, dst);
    dst += dst_stride;

    inp13 = FUNC1(src);
    src += src_stride;
    res0 = FUNC0(inp9, inp8, inp7, inp6,
                                  inp10, inp11, inp12, inp13,
                                  const20, const6, const3);
    res0 = FUNC4(res0, inp10);
    FUNC3(res0, dst);
    dst += dst_stride;

    inp14 = FUNC1(src);
    src += src_stride;
    res0 = FUNC0(inp10, inp9, inp8, inp7,
                                  inp11, inp12, inp13, inp14,
                                  const20, const6, const3);
    res0 = FUNC4(res0, inp11);
    FUNC3(res0, dst);
    dst += dst_stride;

    inp15 = FUNC1(src);
    src += src_stride;
    res0 = FUNC0(inp11, inp10, inp9, inp8,
                                  inp12, inp13, inp14, inp15,
                                  const20, const6, const3);
    res0 = FUNC4(res0, inp12);
    FUNC3(res0, dst);
    dst += dst_stride;

    inp16 = FUNC1(src);
    res0 = FUNC0(inp12, inp11, inp10, inp9,
                                  inp13, inp14, inp15, inp16,
                                  const20, const6, const3);
    res0 = FUNC4(res0, inp13);
    FUNC3(res0, dst);
    dst += dst_stride;

    res0 = FUNC0(inp13, inp12, inp11, inp10,
                                  inp14, inp15, inp16, inp16,
                                  const20, const6, const3);
    res0 = FUNC4(res0, inp14);
    FUNC3(res0, dst);
    dst += dst_stride;

    res0 = FUNC0(inp14, inp13, inp12, inp11,
                                  inp15, inp16, inp16, inp15,
                                  const20, const6, const3);
    res0 = FUNC4(res0, inp15);
    FUNC3(res0, dst);
    dst += dst_stride;

    res0 = FUNC0(inp15, inp14, inp13, inp12,
                                  inp16, inp16, inp15, inp14,
                                  const20, const6, const3);
    res0 = FUNC4(res0, inp16);
    FUNC3(res0, dst);
}