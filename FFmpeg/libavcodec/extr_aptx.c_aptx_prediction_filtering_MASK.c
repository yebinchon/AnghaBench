#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
typedef  int int32_t ;
struct TYPE_4__ {int predicted_sample; int* s_weight; int previous_reconstructed_sample; int* d_weight; int predicted_difference; } ;
typedef  TYPE_1__ Prediction ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int* FUNC3 (TYPE_1__*,int,int) ; 
 void* FUNC4 (int,int) ; 
 int FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(Prediction *prediction,
                                      int32_t reconstructed_difference,
                                      int order)
{
    int32_t reconstructed_sample, predictor, srd0;
    int32_t *reconstructed_differences;
    int64_t predicted_difference = 0;
    int i;

    reconstructed_sample = FUNC4(reconstructed_difference + prediction->predicted_sample, 23);
    predictor = FUNC4((FUNC2(prediction->s_weight[0], prediction->previous_reconstructed_sample)
                             + FUNC2(prediction->s_weight[1], reconstructed_sample)) >> 22, 23);
    prediction->previous_reconstructed_sample = reconstructed_sample;

    reconstructed_differences = FUNC3(prediction, reconstructed_difference, order);
    srd0 = FUNC0(reconstructed_difference, 0) * (1 << 23);
    for (i = 0; i < order; i++) {
        int32_t srd = FUNC1(reconstructed_differences[-i-1]) | 1;
        prediction->d_weight[i] -= FUNC5(prediction->d_weight[i] - srd*srd0, 8);
        predicted_difference += FUNC2(reconstructed_differences[-i], prediction->d_weight[i]);
    }

    prediction->predicted_difference = FUNC4(predicted_difference >> 22, 23);
    prediction->predicted_sample = FUNC4(predictor + prediction->predicted_difference, 23);
}