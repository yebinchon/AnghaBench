#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int nb_neurons; int nb_inputs; float* bias; float const* input_weights; scalar_t__ activation; } ;
typedef  TYPE_1__ DenseLayer ;

/* Variables and functions */
 scalar_t__ ACTIVATION_RELU ; 
 scalar_t__ ACTIVATION_SIGMOID ; 
 scalar_t__ ACTIVATION_TANH ; 
 float FUNC0 (int /*<<< orphan*/ ,float) ; 
 float WEIGHTS_SCALE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 float FUNC2 (float) ; 
 float FUNC3 (float) ; 

__attribute__((used)) static void FUNC4(const DenseLayer *layer, float *output, const float *input)
{
    const int N = layer->nb_neurons, M = layer->nb_inputs, stride = N;

    for (int i = 0; i < N; i++) {
        /* Compute update gate. */
        float sum = layer->bias[i];

        for (int j = 0; j < M; j++)
            sum += layer->input_weights[j * stride + i] * input[j];

        output[i] = WEIGHTS_SCALE * sum;
    }

    if (layer->activation == ACTIVATION_SIGMOID) {
        for (int i = 0; i < N; i++)
            output[i] = FUNC2(output[i]);
    } else if (layer->activation == ACTIVATION_TANH) {
        for (int i = 0; i < N; i++)
            output[i] = FUNC3(output[i]);
    } else if (layer->activation == ACTIVATION_RELU) {
        for (int i = 0; i < N; i++)
            output[i] = FUNC0(0, output[i]);
    } else {
        FUNC1(0);
    }
}