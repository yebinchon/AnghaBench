#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_6__ {int* quantize_intervals; int* invert_quantize_dither_factors; int* quantize_factor_select_offset; int /*<<< orphan*/  factor_max; } ;
struct TYPE_5__ {int reconstructed_difference; int quantization_factor; int factor_select; } ;
typedef  TYPE_1__ InvertQuantize ;
typedef  TYPE_2__ ConstTables ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* quantization_factors ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(InvertQuantize *invert_quantize,
                                     int32_t quantized_sample, int32_t dither,
                                     ConstTables *tables)
{
    int32_t qr, idx, shift, factor_select;

    idx = (quantized_sample ^ -(quantized_sample < 0)) + 1;
    qr = tables->quantize_intervals[idx] / 2;
    if (quantized_sample < 0)
        qr = -qr;

    qr = FUNC3((qr * (1LL<<32)) + FUNC0(dither, tables->invert_quantize_dither_factors[idx]), 32);
    invert_quantize->reconstructed_difference = FUNC0(invert_quantize->quantization_factor, qr) >> 19;

    /* update factor_select */
    factor_select = 32620 * invert_quantize->factor_select;
    factor_select = FUNC2(factor_select + (tables->quantize_factor_select_offset[idx] * (1 << 15)), 15);
    invert_quantize->factor_select = FUNC1(factor_select, 0, tables->factor_max);

    /* update quantization factor */
    idx = (invert_quantize->factor_select & 0xFF) >> 3;
    shift = (tables->factor_max - invert_quantize->factor_select) >> 8;
    invert_quantize->quantization_factor = (quantization_factors[idx] << 11) >> shift;
}