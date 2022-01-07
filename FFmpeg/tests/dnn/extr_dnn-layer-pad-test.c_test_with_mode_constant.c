
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
typedef int expected_output ;
struct TYPE_6__ {float* data; int* dims; } ;
struct TYPE_5__ {int constant_values; int** paddings; int mode; } ;
typedef TYPE_1__ LayerPadParams ;
typedef TYPE_2__ DnnOperand ;


 scalar_t__ EPSON ;
 int LPMP_CONSTANT ;
 int av_freep (float**) ;
 int dnn_execute_layer_pad (TYPE_2__*,scalar_t__*,int,TYPE_1__*) ;
 scalar_t__ fabs (float) ;
 int printf (char*,int,float,float) ;

__attribute__((used)) static int test_with_mode_constant(void)
{
    LayerPadParams params;
    DnnOperand operands[2];
    int32_t input_indexes[1];
    float input[1*2*2*3] = {
        0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11
    };
    float expected_output[1*3*2*6] = {
        728.0, 728.0, 728.0, 728.0, 728.0, 728.0, 728.0, 728.0, 728.0, 728.0, 728.0,
        728.0, 728.0, 0.0, 1.0, 2.0, 728.0, 728.0, 728.0, 3.0, 4.0, 5.0, 728.0, 728.0,
        728.0, 6.0, 7.0, 8.0, 728.0, 728.0, 728.0, 9.0, 10.0, 11.0, 728.0, 728.0
    };
    float *output;

    params.mode = LPMP_CONSTANT;
    params.constant_values = 728;
    params.paddings[0][0] = 0;
    params.paddings[0][1] = 0;
    params.paddings[1][0] = 1;
    params.paddings[1][1] = 0;
    params.paddings[2][0] = 0;
    params.paddings[2][1] = 0;
    params.paddings[3][0] = 1;
    params.paddings[3][1] = 2;

    operands[0].data = input;
    operands[0].dims[0] = 1;
    operands[0].dims[1] = 2;
    operands[0].dims[2] = 2;
    operands[0].dims[3] = 3;
    operands[1].data = ((void*)0);

    input_indexes[0] = 0;
    dnn_execute_layer_pad(operands, input_indexes, 1, &params);

    output = operands[1].data;
    for (int i = 0; i < sizeof(expected_output) / sizeof(float); i++) {
        if (fabs(output[i] - expected_output[i]) > EPSON) {
            printf("at index %d, output: %f, expected_output: %f\n", i, output[i], expected_output[i]);
            av_freep(&output);
            return 1;
        }
    }

    av_freep(&output);
    return 0;

}
