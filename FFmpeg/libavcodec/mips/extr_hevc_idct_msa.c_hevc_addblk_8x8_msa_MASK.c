#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v8i16 ;
struct TYPE_7__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v2i64 ;
struct TYPE_8__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ v16u8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(int16_t *coeffs, uint8_t *dst, int32_t stride)
{
    uint8_t *temp_dst = dst;
    uint64_t dst0, dst1, dst2, dst3;
    v2i64 dst_vec0 = { 0 };
    v2i64 dst_vec1 = { 0 };
    v8i16 dst_r0, dst_l0, dst_r1, dst_l1;
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;
    v16u8 zeros = { 0 };

    FUNC5(coeffs, 8, in0, in1, in2, in3, in4, in5, in6, in7);
    FUNC4(temp_dst, stride, dst0, dst1, dst2, dst3);
    temp_dst += (4 * stride);

    FUNC3(dst0, dst1, dst_vec0);
    FUNC3(dst2, dst3, dst_vec1);
    FUNC2(zeros, dst_vec0, dst_r0, dst_l0);
    FUNC2(zeros, dst_vec1, dst_r1, dst_l1);
    FUNC0(dst_r0, in0, dst_l0, in1, dst_r1, in2, dst_l1, in3,
         dst_r0, dst_l0, dst_r1, dst_l1);
    FUNC1(dst_r0, dst_l0, dst_r1, dst_l1);
    FUNC6(dst_l0, dst_r0, dst_l1, dst_r1, dst_r0, dst_r1);
    FUNC7(dst_r0, dst_r1, 0, 1, 0, 1, dst, stride);

    FUNC4(temp_dst, stride, dst0, dst1, dst2, dst3);
    FUNC3(dst0, dst1, dst_vec0);
    FUNC3(dst2, dst3, dst_vec1);
    FUNC8(dst_vec0, dst_r0, dst_l0);
    FUNC8(dst_vec1, dst_r1, dst_l1);
    FUNC0(dst_r0, in4, dst_l0, in5, dst_r1, in6, dst_l1, in7,
         dst_r0, dst_l0, dst_r1, dst_l1);
    FUNC1(dst_r0, dst_l0, dst_r1, dst_l1);
    FUNC6(dst_l0, dst_r0, dst_l1, dst_r1, dst_r0, dst_r1);
    FUNC7(dst_r0, dst_r1, 0, 1, 0, 1, dst + 4 * stride, stride);
}