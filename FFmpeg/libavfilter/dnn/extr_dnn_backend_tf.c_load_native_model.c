
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int int64_t ;
typedef size_t int32_t ;
struct TYPE_19__ {size_t layers_num; TYPE_1__* layers; } ;
struct TYPE_18__ {scalar_t__ model; } ;
struct TYPE_17__ {int status; int graph; } ;
struct TYPE_16__ {scalar_t__ index; int * oper; } ;
struct TYPE_15__ {int type; scalar_t__ params; } ;
typedef int TF_Tensor ;
typedef TYPE_2__ TF_Output ;
typedef int TF_OperationDescription ;
typedef int TF_Operation ;
typedef TYPE_3__ TFModel ;
typedef int LayerPadParams ;
typedef int DnnLayerMaximumParams ;
typedef int DepthToSpaceParams ;
typedef scalar_t__ DNNReturnType ;
typedef TYPE_4__ DNNModel ;
typedef int ConvolutionalParams ;
typedef TYPE_5__ ConvolutionalNetwork ;


 int CLEANUP_ON_ERROR (TYPE_3__*) ;





 scalar_t__ DNN_ERROR ;
 scalar_t__ DNN_SUCCESS ;
 int TF_AddInput (int *,TYPE_2__) ;
 int * TF_AllocateTensor (int ,int*,int,int) ;
 int TF_FLOAT ;
 int * TF_FinishOperation (int *,int ) ;
 scalar_t__ TF_GetCode (int ) ;
 int TF_INT32 ;
 int TF_NewGraph () ;
 int * TF_NewOperation (int ,char*,char*) ;
 int TF_NewStatus () ;
 scalar_t__ TF_OK ;
 int TF_SetAttrShape (int *,char*,int*,int) ;
 int TF_SetAttrTensor (int *,char*,int *,int ) ;
 int TF_SetAttrType (int *,char*,int ) ;
 scalar_t__ TF_TensorData (int *) ;
 scalar_t__ add_conv_layer (TYPE_3__*,int *,int **,int *,size_t) ;
 scalar_t__ add_depth_to_space_layer (TYPE_3__*,int **,int *,size_t) ;
 scalar_t__ add_maximum_layer (TYPE_3__*,int **,int *,size_t) ;
 scalar_t__ add_pad_layer (TYPE_3__*,int **,int *,size_t) ;
 int ff_dnn_free_model_native (TYPE_4__**) ;
 TYPE_4__* ff_dnn_load_model_native (char const*) ;

__attribute__((used)) static DNNReturnType load_native_model(TFModel *tf_model, const char *model_filename)
{
    int32_t layer;
    TF_OperationDescription *op_desc;
    TF_Operation *op;
    TF_Operation *transpose_op;
    TF_Tensor *tensor;
    TF_Output input;
    int32_t *transpose_perm;
    int64_t transpose_perm_shape[] = {4};
    int64_t input_shape[] = {1, -1, -1, -1};
    DNNReturnType layer_add_res;
    DNNModel *native_model = ((void*)0);
    ConvolutionalNetwork *conv_network;

    native_model = ff_dnn_load_model_native(model_filename);
    if (!native_model){
        return DNN_ERROR;
    }

    conv_network = (ConvolutionalNetwork *)native_model->model;
    tf_model->graph = TF_NewGraph();
    tf_model->status = TF_NewStatus();
    op_desc = TF_NewOperation(tf_model->graph, "Placeholder", "x");
    TF_SetAttrType(op_desc, "dtype", TF_FLOAT);
    TF_SetAttrShape(op_desc, "shape", input_shape, 4);
    op = TF_FinishOperation(op_desc, tf_model->status);
    if (TF_GetCode(tf_model->status) != TF_OK){
        { TF_DeleteGraph(tf_model->graph); TF_DeleteStatus(tf_model->status); return DNN_ERROR; };
    }

    op_desc = TF_NewOperation(tf_model->graph, "Const", "transpose_perm");
    TF_SetAttrType(op_desc, "dtype", TF_INT32);
    tensor = TF_AllocateTensor(TF_INT32, transpose_perm_shape, 1, 4 * sizeof(int32_t));
    transpose_perm = (int32_t *)TF_TensorData(tensor);
    transpose_perm[0] = 1;
    transpose_perm[1] = 2;
    transpose_perm[2] = 3;
    transpose_perm[3] = 0;
    TF_SetAttrTensor(op_desc, "value", tensor, tf_model->status);
    if (TF_GetCode(tf_model->status) != TF_OK){
        { TF_DeleteGraph(tf_model->graph); TF_DeleteStatus(tf_model->status); return DNN_ERROR; };
    }
    transpose_op = TF_FinishOperation(op_desc, tf_model->status);

    for (layer = 0; layer < conv_network->layers_num; ++layer){
        switch (conv_network->layers[layer].type){
        case 130:
            layer_add_res = DNN_SUCCESS;
            break;
        case 132:
            layer_add_res = add_conv_layer(tf_model, transpose_op, &op,
                                           (ConvolutionalParams *)conv_network->layers[layer].params, layer);
            break;
        case 131:
            layer_add_res = add_depth_to_space_layer(tf_model, &op,
                                                     (DepthToSpaceParams *)conv_network->layers[layer].params, layer);
            break;
        case 128:
            layer_add_res = add_pad_layer(tf_model, &op,
                                          (LayerPadParams *)conv_network->layers[layer].params, layer);
            break;
        case 129:
            layer_add_res = add_maximum_layer(tf_model, &op,
                                          (DnnLayerMaximumParams *)conv_network->layers[layer].params, layer);
            break;
        default:
            { TF_DeleteGraph(tf_model->graph); TF_DeleteStatus(tf_model->status); return DNN_ERROR; };
        }

        if (layer_add_res != DNN_SUCCESS){
            { TF_DeleteGraph(tf_model->graph); TF_DeleteStatus(tf_model->status); return DNN_ERROR; };
        }
    }

    op_desc = TF_NewOperation(tf_model->graph, "Identity", "y");
    input.oper = op;
    input.index = 0;
    TF_AddInput(op_desc, input);
    TF_FinishOperation(op_desc, tf_model->status);
    if (TF_GetCode(tf_model->status) != TF_OK){
        { TF_DeleteGraph(tf_model->graph); TF_DeleteStatus(tf_model->status); return DNN_ERROR; };
    }

    ff_dnn_free_model_native(&native_model);

    return DNN_SUCCESS;
}
