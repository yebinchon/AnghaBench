
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* int32_t ;
struct TYPE_6__ {void* block_size; } ;
struct TYPE_5__ {TYPE_2__* params; void* output_operand_index; void** input_operand_indexes; } ;
typedef TYPE_1__ Layer ;
typedef TYPE_2__ DepthToSpaceParams ;
typedef int AVIOContext ;


 TYPE_2__* av_malloc (int) ;
 scalar_t__ avio_rl32 (int *) ;

int dnn_load_layer_depth2space(Layer *layer, AVIOContext *model_file_context, int file_size)
{
    DepthToSpaceParams *params;
    int dnn_size = 0;
    params = av_malloc(sizeof(*params));
    if (!params)
        return 0;

    params->block_size = (int32_t)avio_rl32(model_file_context);
    dnn_size += 4;
    layer->input_operand_indexes[0] = (int32_t)avio_rl32(model_file_context);
    layer->output_operand_index = (int32_t)avio_rl32(model_file_context);
    dnn_size += 8;
    layer->params = params;

    return dnn_size;
}
