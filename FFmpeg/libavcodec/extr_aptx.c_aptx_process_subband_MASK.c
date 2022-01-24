#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_12__ {int /*<<< orphan*/  prediction_order; } ;
struct TYPE_11__ {int /*<<< orphan*/  reconstructed_difference; } ;
struct TYPE_10__ {int* prev_sign; int* s_weight; int /*<<< orphan*/  predicted_difference; } ;
typedef  TYPE_1__ Prediction ;
typedef  TYPE_2__ InvertQuantize ;
typedef  TYPE_3__ ConstTables ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int,int) ; 
 int FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(InvertQuantize *invert_quantize,
                                 Prediction *prediction,
                                 int32_t quantized_sample, int32_t dither,
                                 ConstTables *tables)
{
    int32_t sign, same_sign[2], weight[2], sw1, range;

    FUNC1(invert_quantize, quantized_sample, dither, tables);

    sign = FUNC0(invert_quantize->reconstructed_difference,
                      -prediction->predicted_difference);
    same_sign[0] = sign * prediction->prev_sign[0];
    same_sign[1] = sign * prediction->prev_sign[1];
    prediction->prev_sign[0] = prediction->prev_sign[1];
    prediction->prev_sign[1] = sign | 1;

    range = 0x100000;
    sw1 = FUNC4(-same_sign[1] * prediction->s_weight[1], 1);
    sw1 = (FUNC3(sw1, -range, range) & ~0xF) * 16;

    range = 0x300000;
    weight[0] = 254 * prediction->s_weight[0] + 0x800000*same_sign[0] + sw1;
    prediction->s_weight[0] = FUNC3(FUNC4(weight[0], 8), -range, range);

    range = 0x3C0000 - prediction->s_weight[0];
    weight[1] = 255 * prediction->s_weight[1] + 0xC00000*same_sign[1];
    prediction->s_weight[1] = FUNC3(FUNC4(weight[1], 8), -range, range);

    FUNC2(prediction,
                              invert_quantize->reconstructed_difference,
                              tables->prediction_order);
}