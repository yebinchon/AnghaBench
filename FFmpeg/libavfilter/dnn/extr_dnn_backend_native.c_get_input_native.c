
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int operands_num; TYPE_1__* operands; } ;
struct TYPE_6__ {int height; int width; int channels; int dt; } ;
struct TYPE_5__ {scalar_t__ type; int* dims; int data_type; int name; } ;
typedef TYPE_1__ DnnOperand ;
typedef int DNNReturnType ;
typedef TYPE_2__ DNNData ;
typedef TYPE_3__ ConvolutionalNetwork ;


 int DNN_ERROR ;
 int DNN_SUCCESS ;
 scalar_t__ DOT_INPUT ;
 int av_assert0 (int) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static DNNReturnType get_input_native(void *model, DNNData *input, const char *input_name)
{
    ConvolutionalNetwork *network = (ConvolutionalNetwork *)model;

    for (int i = 0; i < network->operands_num; ++i) {
        DnnOperand *oprd = &network->operands[i];
        if (strcmp(oprd->name, input_name) == 0) {
            if (oprd->type != DOT_INPUT)
                return DNN_ERROR;
            input->dt = oprd->data_type;
            av_assert0(oprd->dims[0] == 1);
            input->height = oprd->dims[1];
            input->width = oprd->dims[2];
            input->channels = oprd->dims[3];
            return DNN_SUCCESS;
        }
    }


    return DNN_ERROR;
}
