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
typedef  int int64_t ;
typedef  int int32_t ;
struct TYPE_6__ {int* quantize_intervals; int* quantize_dither_factors; int /*<<< orphan*/  tables_size; } ;
struct TYPE_5__ {int quantized_sample; int quantized_sample_parity_change; void* error; } ;
typedef  TYPE_1__ Quantize ;
typedef  TYPE_2__ ConstTables ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int,int,int const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int,int) ; 
 int FUNC8 (int,int) ; 

__attribute__((used)) static void FUNC9(Quantize *quantize,
                                     int32_t sample_difference,
                                     int32_t dither,
                                     int32_t quantization_factor,
                                     ConstTables *tables)
{
    const int32_t *intervals = tables->quantize_intervals;
    int32_t quantized_sample, dithered_sample, parity_change;
    int32_t d, mean, interval, inv, sample_difference_abs;
    int64_t error;

    sample_difference_abs = FUNC0(sample_difference);
    sample_difference_abs = FUNC1(sample_difference_abs, (1 << 23) - 1);

    quantized_sample = FUNC4(sample_difference_abs >> 4,
                                       quantization_factor,
                                       intervals, tables->tables_size);

    d = FUNC6(FUNC3(dither, dither), 7) - (1 << 23);
    d = FUNC7(FUNC2(d, tables->quantize_dither_factors[quantized_sample]), 23);

    intervals += quantized_sample;
    mean = (intervals[1] + intervals[0]) / 2;
    interval = (intervals[1] - intervals[0]) * (-(sample_difference < 0) | 1);

    dithered_sample = FUNC8(FUNC2(dither, interval) + ((int64_t)FUNC5(mean + d, 23) << 32), 32);
    error = ((int64_t)sample_difference_abs << 20) - FUNC2(dithered_sample, quantization_factor);
    quantize->error = FUNC0(FUNC7(error, 23));

    parity_change = quantized_sample;
    if (error < 0)
        quantized_sample--;
    else
        parity_change--;

    inv = -(sample_difference < 0);
    quantize->quantized_sample               = quantized_sample ^ inv;
    quantize->quantized_sample_parity_change = parity_change    ^ inv;
}