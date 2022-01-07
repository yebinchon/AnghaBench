
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nb_neurons; int nb_inputs; float* bias; float const* input_weights; scalar_t__ activation; } ;
typedef TYPE_1__ DenseLayer ;


 scalar_t__ ACTIVATION_RELU ;
 scalar_t__ ACTIVATION_SIGMOID ;
 scalar_t__ ACTIVATION_TANH ;
 float FFMAX (int ,float) ;
 float WEIGHTS_SCALE ;
 int av_assert0 (int ) ;
 float sigmoid_approx (float) ;
 float tansig_approx (float) ;

__attribute__((used)) static void compute_dense(const DenseLayer *layer, float *output, const float *input)
{
    const int N = layer->nb_neurons, M = layer->nb_inputs, stride = N;

    for (int i = 0; i < N; i++) {

        float sum = layer->bias[i];

        for (int j = 0; j < M; j++)
            sum += layer->input_weights[j * stride + i] * input[j];

        output[i] = WEIGHTS_SCALE * sum;
    }

    if (layer->activation == ACTIVATION_SIGMOID) {
        for (int i = 0; i < N; i++)
            output[i] = sigmoid_approx(output[i]);
    } else if (layer->activation == ACTIVATION_TANH) {
        for (int i = 0; i < N; i++)
            output[i] = tansig_approx(output[i]);
    } else if (layer->activation == ACTIVATION_RELU) {
        for (int i = 0; i < N; i++)
            output[i] = FFMAX(0, output[i]);
    } else {
        av_assert0(0);
    }
}
