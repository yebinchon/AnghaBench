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
typedef  int int32_t ;
typedef  int int16_t ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VP9_DCT_CONST_BITS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int cospi_16_64 ; 

__attribute__((used)) static void FUNC3(int16_t *input, uint8_t *dst,
                                  int32_t dst_stride)
{
    int16_t out;
    int32_t val;
    v8i16 vec;

    out = FUNC0((input[0] * cospi_16_64), VP9_DCT_CONST_BITS);
    out = FUNC0((out * cospi_16_64), VP9_DCT_CONST_BITS);
    val = FUNC0(out, 5);
    vec = FUNC2(val);
    input[0] = 0;

    FUNC1(dst, dst_stride, vec, vec, vec, vec);
    dst += (4 * dst_stride);
    FUNC1(dst, dst_stride, vec, vec, vec, vec);
}