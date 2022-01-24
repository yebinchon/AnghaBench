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
typedef  int /*<<< orphan*/  v8i16 ;
typedef  scalar_t__ v4i32 ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,scalar_t__,int,scalar_t__,int,scalar_t__,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC8(int16_t block[4][4][16], int16_t input[16])
{
    int16_t *mb_dq_coeff = &block[0][0][0];
    v8i16 input0, input1;
    v4i32 in0, in1, in2, in3, a1, b1, c1, d1;
    v4i32 hz0, hz1, hz2, hz3, vt0, vt1, vt2, vt3;

    /* load short vector elements of 4x4 block */
    FUNC2(input, 8, input0, input1);
    FUNC5(input0, in0, in1);
    FUNC5(input1, in2, in3);
    FUNC1(in0, in1, in2, in3, a1, b1, c1, d1);
    FUNC1(a1, d1, c1, b1, hz0, hz1, hz3, hz2);
    /* transpose the block */
    FUNC4(hz0, hz1, hz2, hz3, hz0, hz1, hz2, hz3);
    FUNC1(hz0, hz1, hz2, hz3, a1, b1, c1, d1);
    FUNC1(a1, d1, c1, b1, vt0, vt1, vt3, vt2);
    FUNC0(vt0, 3, vt1, 3, vt2, 3, vt3, 3, vt0, vt1, vt2, vt3);
    FUNC3(vt0, vt1, vt2, vt3, 3);
    mb_dq_coeff[0] = FUNC6((v8i16) vt0, 0);
    mb_dq_coeff[16] = FUNC6((v8i16) vt1, 0);
    mb_dq_coeff[32] = FUNC6((v8i16) vt2, 0);
    mb_dq_coeff[48] = FUNC6((v8i16) vt3, 0);
    mb_dq_coeff[64] = FUNC6((v8i16) vt0, 2);
    mb_dq_coeff[80] = FUNC6((v8i16) vt1, 2);
    mb_dq_coeff[96] = FUNC6((v8i16) vt2, 2);
    mb_dq_coeff[112] = FUNC6((v8i16) vt3, 2);
    mb_dq_coeff[128] = FUNC6((v8i16) vt0, 4);
    mb_dq_coeff[144] = FUNC6((v8i16) vt1, 4);
    mb_dq_coeff[160] = FUNC6((v8i16) vt2, 4);
    mb_dq_coeff[176] = FUNC6((v8i16) vt3, 4);
    mb_dq_coeff[192] = FUNC6((v8i16) vt0, 6);
    mb_dq_coeff[208] = FUNC6((v8i16) vt1, 6);
    mb_dq_coeff[224] = FUNC6((v8i16) vt2, 6);
    mb_dq_coeff[240] = FUNC6((v8i16) vt3, 6);

    FUNC7(input, 0, 4 * 4 * sizeof(int16_t));
}