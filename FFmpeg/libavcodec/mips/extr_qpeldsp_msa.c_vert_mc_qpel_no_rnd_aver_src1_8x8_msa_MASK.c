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
typedef  int /*<<< orphan*/  v2i64 ;
typedef  scalar_t__ v16u8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(const uint8_t *src,
                                                  int32_t src_stride,
                                                  uint8_t *dst,
                                                  int32_t dst_stride)
{
    v16u8 inp0, inp1, inp2, inp3, inp4, inp5, inp6, inp7, inp8;
    v16u8 tmp0, tmp1, res0, res1;
    v16u8 const20 = (v16u8) FUNC7(20);
    v16u8 const6 = (v16u8) FUNC7(6);
    v16u8 const3 = (v16u8) FUNC7(3);

    FUNC3(src, src_stride, inp0, inp1, inp2, inp3);
    src += (4 * src_stride);
    FUNC2(src, src_stride, inp4, inp5);
    src += (2 * src_stride);
    res0 = FUNC0(inp0, inp0, inp1, inp2,
                                                 inp1, inp2, inp3, inp4,
                                                 inp1, inp0, inp0, inp1,
                                                 inp2, inp3, inp4, inp5,
                                                 const20, const6, const3);
    FUNC2(src, src_stride, inp6, inp7);
    src += (2 * src_stride);
    res1 = FUNC0(inp2, inp1, inp0, inp0,
                                                 inp3, inp4, inp5, inp6,
                                                 inp3, inp2, inp1, inp0,
                                                 inp4, inp5, inp6, inp7,
                                                 const20, const6, const3);
    tmp0 = (v16u8) FUNC6((v2i64) inp1, 1, (v2i64) inp2);
    tmp1 = (v16u8) FUNC6((v2i64) inp3, 1, (v2i64) inp4);
    res0 = FUNC5(res0, tmp0);
    res1 = FUNC5(res1, tmp1);
    FUNC4(res0, res1, 0, 1, 0, 1, dst, dst_stride);

    inp8 = FUNC1(src);
    res0 = FUNC0(inp4, inp3, inp2, inp1,
                                                 inp5, inp6, inp7, inp8,
                                                 inp5, inp4, inp3, inp2,
                                                 inp6, inp7, inp8, inp8,
                                                 const20, const6, const3);
    res1 = FUNC0(inp6, inp5, inp4, inp3,
                                                 inp7, inp8, inp8, inp7,
                                                 inp7, inp6, inp5, inp4,
                                                 inp8, inp8, inp7, inp6,
                                                 const20, const6, const3);
    tmp0 = (v16u8) FUNC6((v2i64) inp5, 1, (v2i64) inp6);
    tmp1 = (v16u8) FUNC6((v2i64) inp7, 1, (v2i64) inp8);
    res0 = FUNC5(res0, tmp0);
    res1 = FUNC5(res1, tmp1);
    FUNC4(res0, res1, 0, 1, 0, 1, dst + 4 * dst_stride, dst_stride);
}