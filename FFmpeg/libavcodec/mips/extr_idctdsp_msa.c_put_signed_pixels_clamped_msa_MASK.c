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
typedef  scalar_t__ v8i16 ;
typedef  int /*<<< orphan*/  v2i64 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const int16_t *block, uint8_t *pixels,
                                          int32_t stride)
{
    uint64_t in0_d, in1_d, in2_d, in3_d, in4_d, in5_d, in6_d, in7_d;
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;

    FUNC1(block, 8, in0, in1, in2, in3, in4, in5, in6, in7);

    in0 += 128;
    in1 += 128;
    in2 += 128;
    in3 += 128;
    in4 += 128;
    in5 += 128;
    in6 += 128;
    in7 += 128;

    FUNC0(in0, in1, in2, in3, in4, in5, in6, in7);
    FUNC2(in0, in0, in1, in1, in2, in2, in3, in3, in0, in1, in2, in3);
    FUNC2(in4, in4, in5, in5, in6, in6, in7, in7, in4, in5, in6, in7);

    in0_d = FUNC4((v2i64) in0, 0);
    in1_d = FUNC4((v2i64) in1, 0);
    in2_d = FUNC4((v2i64) in2, 0);
    in3_d = FUNC4((v2i64) in3, 0);
    in4_d = FUNC4((v2i64) in4, 0);
    in5_d = FUNC4((v2i64) in5, 0);
    in6_d = FUNC4((v2i64) in6, 0);
    in7_d = FUNC4((v2i64) in7, 0);
    FUNC3(in0_d, in1_d, in2_d, in3_d, pixels, stride);
    pixels += 4 * stride;
    FUNC3(in4_d, in5_d, in6_d, in7_d, pixels, stride);
}