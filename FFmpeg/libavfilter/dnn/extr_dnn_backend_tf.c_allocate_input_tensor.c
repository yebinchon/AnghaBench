
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int height; int width; int channels; int dt; } ;
typedef int TF_Tensor ;
typedef int TF_DataType ;
typedef TYPE_1__ DNNData ;




 int * TF_AllocateTensor (int ,int*,int,int) ;
 int TF_FLOAT ;
 int TF_UINT8 ;
 int av_assert0 (int) ;

__attribute__((used)) static TF_Tensor *allocate_input_tensor(const DNNData *input)
{
    TF_DataType dt;
    size_t size;
    int64_t input_dims[] = {1, input->height, input->width, input->channels};
    switch (input->dt) {
    case 129:
        dt = TF_FLOAT;
        size = sizeof(float);
        break;
    case 128:
        dt = TF_UINT8;
        size = sizeof(char);
        break;
    default:
        av_assert0(!"should not reach here");
    }

    return TF_AllocateTensor(dt, input_dims, 4,
                             input_dims[1] * input_dims[2] * input_dims[3] * size);
}
