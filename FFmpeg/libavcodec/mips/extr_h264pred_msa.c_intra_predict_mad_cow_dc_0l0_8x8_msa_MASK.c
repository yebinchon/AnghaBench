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
typedef  int uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int*,int) ; 

__attribute__((used)) static void FUNC1(uint8_t *src, int32_t stride)
{
    uint32_t src0;
    uint64_t out0, out1;

    src0  = src[4 * stride - 1];
    src0 += src[5 * stride - 1];
    src0 += src[6 * stride - 1];
    src0 += src[7 * stride - 1];
    src0 = (src0 + 2) >> 2;

    out0 = 0x8080808080808080;
    out1 = src0 * 0x0101010101010101;

    FUNC0(out0, out0, out0, out0, src, stride);
    src += (4 * stride);
    FUNC0(out1, out1, out1, out1, src, stride);
}