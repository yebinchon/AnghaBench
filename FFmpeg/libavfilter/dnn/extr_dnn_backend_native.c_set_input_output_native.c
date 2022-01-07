
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_8__ {scalar_t__ layers_num; scalar_t__ operands_num; size_t nb_output; int* output_indexes; TYPE_1__* operands; } ;
struct TYPE_7__ {int height; int width; int channels; int* data; } ;
struct TYPE_6__ {scalar_t__ type; int* dims; int* data; int name; int length; } ;
typedef TYPE_1__ DnnOperand ;
typedef int DNNReturnType ;
typedef TYPE_2__ DNNData ;
typedef TYPE_3__ ConvolutionalNetwork ;


 int DNN_ERROR ;
 int DNN_SUCCESS ;
 scalar_t__ DOT_INPUT ;
 int av_freep (int**) ;
 int* av_malloc (int ) ;
 int* av_mallocz_array (size_t,int) ;
 int calculate_operand_data_length (TYPE_1__*) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static DNNReturnType set_input_output_native(void *model, DNNData *input, const char *input_name, const char **output_names, uint32_t nb_output)
{
    ConvolutionalNetwork *network = (ConvolutionalNetwork *)model;
    DnnOperand *oprd = ((void*)0);

    if (network->layers_num <= 0 || network->operands_num <= 0)
        return DNN_ERROR;


    for (int i = 0; i < network->operands_num; ++i) {
        oprd = &network->operands[i];
        if (strcmp(oprd->name, input_name) == 0) {
            if (oprd->type != DOT_INPUT)
                return DNN_ERROR;
            break;
        }
        oprd = ((void*)0);
    }

    if (!oprd)
        return DNN_ERROR;

    oprd->dims[0] = 1;
    oprd->dims[1] = input->height;
    oprd->dims[2] = input->width;
    oprd->dims[3] = input->channels;

    av_freep(&oprd->data);
    oprd->length = calculate_operand_data_length(oprd);
    oprd->data = av_malloc(oprd->length);
    if (!oprd->data)
        return DNN_ERROR;

    input->data = oprd->data;


    network->nb_output = 0;
    av_freep(&network->output_indexes);
    network->output_indexes = av_mallocz_array(nb_output, sizeof(*network->output_indexes));
    if (!network->output_indexes)
        return DNN_ERROR;

    for (uint32_t i = 0; i < nb_output; ++i) {
        const char *output_name = output_names[i];
        for (int j = 0; j < network->operands_num; ++j) {
            oprd = &network->operands[j];
            if (strcmp(oprd->name, output_name) == 0) {
                network->output_indexes[network->nb_output++] = j;
                break;
            }
        }
    }

    if (network->nb_output != nb_output)
        return DNN_ERROR;

    return DNN_SUCCESS;
}
