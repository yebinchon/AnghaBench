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
typedef  int v8i16 ;
typedef  scalar_t__ v16u8 ;
typedef  scalar_t__ v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (size_t) ; 
 int FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (int,int) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (int,int) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__,int) ; 
 size_t* h263_loop_filter_strength_msa ; 

__attribute__((used)) static void FUNC16(uint8_t *src, int32_t stride, int32_t qscale)
{
    int32_t strength = h263_loop_filter_strength_msa[qscale];
    v16u8 in0, in1, in2, in3, in4, in5, in6, in7;
    v8i16 temp0, temp1, temp2;
    v8i16 diff0, diff2, diff4, diff6, diff8;
    v8i16 d0, a_d0, str_x2, str;

    src -= 2;
    FUNC1(src, stride, in0, in1, in2, in3, in4, in5, in6, in7);
    FUNC4(in0, in1, in2, in3, in4, in5, in6, in7,
                       in0, in3, in2, in1);

    temp0 = (v8i16) FUNC12((v16i8) in0, (v16i8) in1);
    a_d0 = FUNC10((v16u8) temp0, (v16u8) temp0);
    temp2 = (v8i16) FUNC12((v16i8) in2, (v16i8) in3);
    temp2 = FUNC10((v16u8) temp2, (v16u8) temp2);
    temp2 <<= 2;
    diff0 = a_d0 + temp2;
    diff2 = -(-diff0 >> 3);
    str_x2 = FUNC9(-(strength << 1));
    temp0 = (str_x2 <= diff2);
    diff2 = (v8i16) FUNC7((v16u8) diff2, (v16u8) temp0, (v16u8) temp0);
    temp2 = str_x2 - diff2;
    str = FUNC9(-strength);
    temp0 = (diff2 < str);
    diff2 = (v8i16) FUNC6((v16u8) diff2, (v16u8) temp2, (v16u8) temp0);
    diff4 = diff0 >> 3;
    str_x2 = FUNC9(strength << 1);
    temp0 = (diff4 <= str_x2);
    diff4 = (v8i16) FUNC7((v16u8) diff4, (v16u8) temp0, (v16u8) temp0);
    temp2 = str_x2 - diff4;
    str = FUNC9(strength);
    temp0 = (str < diff4);
    diff4 = (v8i16) FUNC6((v16u8) diff4, (v16u8) temp2, (v16u8) temp0);
    temp0 = FUNC8(diff0, 0);
    d0 = (v8i16) FUNC6((v16u8) diff4, (v16u8) diff2, (v16u8) temp0);
    diff2 = -diff2 >> 1;
    diff4 >>= 1;
    diff8 = (v8i16) FUNC6((v16u8) diff4, (v16u8) diff2, (v16u8) temp0);
    diff6 = (-a_d0) >> 2;
    diff6 = -(diff6);
    temp2 = -diff8;
    temp0 = (diff6 < temp2);
    diff6 = (v8i16) FUNC6((v16u8) diff6, (v16u8) temp2, (v16u8) temp0);
    diff2 = a_d0 >> 2;
    temp0 = (diff2 <= diff8);
    diff2 = (v8i16) FUNC7((v16u8) diff2, (v16u8) diff8, (v16u8) temp0);
    temp0 = FUNC8(a_d0, 0);
    diff6 = (v8i16) FUNC7((v16u8) diff6, (v16u8) diff2, (v16u8) temp0);
    FUNC2(a_d0, diff6, a_d0, d0, diff6, d0);
    in0 = (v16u8) ((v16i8) in0 - (v16i8) diff6);
    in1 = (v16u8) ((v16i8) in1 + (v16i8) diff6);
    in3 = FUNC15(in3, 128);
    in3 = (v16u8) FUNC5((v16i8) in3, (v16i8) d0);
    in3 = FUNC15(in3, 128);
    in2 = FUNC14(in2, (v16i8) d0);
    FUNC0(in3, in0, in1, in2, temp0, temp1);
    in0 = (v16u8) FUNC13(temp1, temp0);
    in3 = (v16u8) FUNC11(temp1, temp0);
    FUNC3(in0, in3, 0, 1, 2, 3, 0, 1, 2, 3, src, stride);
}