#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ v8i16 ;
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int int32_t ;
typedef  int int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__ const,scalar_t__,scalar_t__ const,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(uint8_t *dst, int16_t *src,
                                   int32_t dst_stride)
{
    v16u8 pred = { 0 };
    v16i8 out;
    v8i16 pred_r, pred_l;
    const uint32_t src0 = FUNC3(dst);
    const uint32_t src1 = FUNC3(dst + dst_stride);
    const uint32_t src2 = FUNC3(dst + 2 * dst_stride);
    const uint32_t src3 = FUNC3(dst + 3 * dst_stride);
    const int16_t dc = (src[0] + 32) >> 6;
    const v8i16 input_dc = FUNC6(dc);

    src[0] = 0;
    FUNC2(src0, src1, src2, src3, pred);
    FUNC5(pred, pred_r, pred_l);
    FUNC0(pred_r, input_dc, pred_l, input_dc, pred_r, pred_l);
    FUNC1(pred_r, pred_l);
    out = FUNC7((v16i8) pred_l, (v16i8) pred_r);
    FUNC4(out, 0, 1, 2, 3, dst, dst_stride);
}