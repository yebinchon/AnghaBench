
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* int32_t ;
struct TYPE_6__ {TYPE_1__* params; void* output_operand_index; void** input_operand_indexes; } ;
struct TYPE_5__ {void*** paddings; void* mode; } ;
typedef TYPE_1__ LayerPadParams ;
typedef TYPE_2__ Layer ;
typedef int AVIOContext ;


 TYPE_1__* av_malloc (int) ;
 void* avio_rl32 (int *) ;

int dnn_load_layer_pad(Layer *layer, AVIOContext *model_file_context, int file_size)
{
    LayerPadParams *params;
    int dnn_size = 0;
    params = av_malloc(sizeof(*params));
    if (!params)
        return 0;

    params->mode = (int32_t)avio_rl32(model_file_context);
    dnn_size += 4;
    for (int i = 0; i < 4; ++i) {
        params->paddings[i][0] = avio_rl32(model_file_context);
        params->paddings[i][1] = avio_rl32(model_file_context);
        dnn_size += 8;
    }
    layer->input_operand_indexes[0] = (int32_t)avio_rl32(model_file_context);
    layer->output_operand_index = (int32_t)avio_rl32(model_file_context);
    dnn_size += 8;
    layer->params = params;

    return dnn_size;
}
