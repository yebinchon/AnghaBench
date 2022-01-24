#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 

__attribute__((used)) static void FUNC3(const uint8_t *src, int32_t src_stride,
                                         uint8_t *dst, int32_t dst_stride)
{
    v16i8 src0, src1, src2, src3, src0_sld1, src1_sld1, src2_sld1, src3_sld1;
    v16i8 zeros = { 0 };

    FUNC1(src, src_stride, src0, src1, src2, src3);
    FUNC2(zeros, src0, zeros, src1, zeros, src2, zeros, src3, 1,
               src0_sld1, src1_sld1, src2_sld1, src3_sld1);
    FUNC0(src0, src0_sld1, src1, src1_sld1,
                 src2, src2_sld1, src3, src3_sld1, dst, dst_stride);
}