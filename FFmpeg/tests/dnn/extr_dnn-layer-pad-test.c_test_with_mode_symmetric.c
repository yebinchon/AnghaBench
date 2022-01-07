
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
typedef int expected_output ;
struct TYPE_6__ {float* data; int* dims; } ;
struct TYPE_5__ {int** paddings; int mode; } ;
typedef TYPE_1__ LayerPadParams ;
typedef TYPE_2__ DnnOperand ;


 scalar_t__ EPSON ;
 int LPMP_SYMMETRIC ;
 int av_freep (float**) ;
 int dnn_execute_layer_pad (TYPE_2__*,scalar_t__*,int,TYPE_1__*) ;
 scalar_t__ fabs (float) ;
 int printf (char*,int,float,float) ;

__attribute__((used)) static int test_with_mode_symmetric(void)
{
    LayerPadParams params;
    DnnOperand operands[2];
    int32_t input_indexes[1];
    float input[1*4*4*3] = {
        0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47
    };
    float expected_output[1*9*9*3] = {
        18.0, 19.0, 20.0, 15.0, 16.0, 17.0, 12.0, 13.0, 14.0, 12.0, 13.0, 14.0, 15.0, 16.0, 17.0, 18.0, 19.0, 20.0, 21.0, 22.0, 23.0, 21.0, 22.0, 23.0, 18.0, 19.0, 20.0, 6.0, 7.0, 8.0, 3.0,
        4.0, 5.0, 0.0, 1.0, 2.0, 0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 11.0, 9.0, 10.0, 11.0, 6.0, 7.0, 8.0, 6.0, 7.0, 8.0, 3.0, 4.0, 5.0, 0.0, 1.0, 2.0, 0.0, 1.0, 2.0, 3.0,
        4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 11.0, 9.0, 10.0, 11.0, 6.0, 7.0, 8.0, 18.0, 19.0, 20.0, 15.0, 16.0, 17.0, 12.0, 13.0, 14.0, 12.0, 13.0, 14.0, 15.0, 16.0, 17.0, 18.0, 19.0, 20.0,
        21.0, 22.0, 23.0, 21.0, 22.0, 23.0, 18.0, 19.0, 20.0, 30.0, 31.0, 32.0, 27.0, 28.0, 29.0, 24.0, 25.0, 26.0, 24.0, 25.0, 26.0, 27.0, 28.0, 29.0, 30.0, 31.0, 32.0, 33.0, 34.0, 35.0, 33.0,
        34.0, 35.0, 30.0, 31.0, 32.0, 42.0, 43.0, 44.0, 39.0, 40.0, 41.0, 36.0, 37.0, 38.0, 36.0, 37.0, 38.0, 39.0, 40.0, 41.0, 42.0, 43.0, 44.0, 45.0, 46.0, 47.0, 45.0, 46.0, 47.0, 42.0, 43.0,
        44.0, 42.0, 43.0, 44.0, 39.0, 40.0, 41.0, 36.0, 37.0, 38.0, 36.0, 37.0, 38.0, 39.0, 40.0, 41.0, 42.0, 43.0, 44.0, 45.0, 46.0, 47.0, 45.0, 46.0, 47.0, 42.0, 43.0, 44.0, 30.0, 31.0, 32.0,
        27.0, 28.0, 29.0, 24.0, 25.0, 26.0, 24.0, 25.0, 26.0, 27.0, 28.0, 29.0, 30.0, 31.0, 32.0, 33.0, 34.0, 35.0, 33.0, 34.0, 35.0, 30.0, 31.0, 32.0, 18.0, 19.0, 20.0, 15.0, 16.0, 17.0, 12.0,
        13.0, 14.0, 12.0, 13.0, 14.0, 15.0, 16.0, 17.0, 18.0, 19.0, 20.0, 21.0, 22.0, 23.0, 21.0, 22.0, 23.0, 18.0, 19.0, 20.0
    };
    float *output;

    params.mode = LPMP_SYMMETRIC;
    params.paddings[0][0] = 0;
    params.paddings[0][1] = 0;
    params.paddings[1][0] = 2;
    params.paddings[1][1] = 3;
    params.paddings[2][0] = 3;
    params.paddings[2][1] = 2;
    params.paddings[3][0] = 0;
    params.paddings[3][1] = 0;

    operands[0].data = input;
    operands[0].dims[0] = 1;
    operands[0].dims[1] = 4;
    operands[0].dims[2] = 4;
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
