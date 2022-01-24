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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int VP9_DCT_CONST_BITS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int cospi_16_64 ; 

__attribute__((used)) static void FUNC3(int16_t *input, uint8_t *dst,
                                  int32_t dst_stride)
{
    int16_t out;
    v8i16 vec;

    out = FUNC1((input[0] * cospi_16_64), VP9_DCT_CONST_BITS);
    out = FUNC1((out * cospi_16_64), VP9_DCT_CONST_BITS);
    out = FUNC1(out, 4);
    vec = FUNC2(out);
    input[0] = 0;

    FUNC0(vec, vec, vec, vec, dst, dst_stride);
}