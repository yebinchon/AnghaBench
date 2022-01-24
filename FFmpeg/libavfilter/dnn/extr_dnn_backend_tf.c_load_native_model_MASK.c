#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
typedef  size_t int32_t ;
struct TYPE_19__ {size_t layers_num; TYPE_1__* layers; } ;
struct TYPE_18__ {scalar_t__ model; } ;
struct TYPE_17__ {int /*<<< orphan*/  status; int /*<<< orphan*/  graph; } ;
struct TYPE_16__ {scalar_t__ index; int /*<<< orphan*/ * oper; } ;
struct TYPE_15__ {int type; scalar_t__ params; } ;
typedef  int /*<<< orphan*/  TF_Tensor ;
typedef  TYPE_2__ TF_Output ;
typedef  int /*<<< orphan*/  TF_OperationDescription ;
typedef  int /*<<< orphan*/  TF_Operation ;
typedef  TYPE_3__ TFModel ;
typedef  int /*<<< orphan*/  LayerPadParams ;
typedef  int /*<<< orphan*/  DnnLayerMaximumParams ;
typedef  int /*<<< orphan*/  DepthToSpaceParams ;
typedef  scalar_t__ DNNReturnType ;
typedef  TYPE_4__ DNNModel ;
typedef  int /*<<< orphan*/  ConvolutionalParams ;
typedef  TYPE_5__ ConvolutionalNetwork ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
#define  DLT_CONV2D 132 
#define  DLT_DEPTH_TO_SPACE 131 
#define  DLT_INPUT 130 
#define  DLT_MAXIMUM 129 
#define  DLT_MIRROR_PAD 128 
 scalar_t__ DNN_ERROR ; 
 scalar_t__ DNN_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  TF_FLOAT ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TF_INT32 ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ TF_OK ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC13 (TYPE_3__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC14 (TYPE_3__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC15 (TYPE_3__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__**) ; 
 TYPE_4__* FUNC17 (char const*) ; 

__attribute__((used)) static DNNReturnType FUNC18(TFModel *tf_model, const char *model_filename)
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
    DNNModel *native_model = NULL;
    ConvolutionalNetwork *conv_network;

    native_model = FUNC17(model_filename);
    if (!native_model){
        return DNN_ERROR;
    }

    conv_network = (ConvolutionalNetwork *)native_model->model;
    tf_model->graph = FUNC5();
    tf_model->status = FUNC7();

#define CLEANUP_ON_ERROR(tf_model) \
    { \
        TF_DeleteGraph(tf_model->graph); \
        TF_DeleteStatus(tf_model->status); \
        return DNN_ERROR; \
    }

    op_desc = FUNC6(tf_model->graph, "Placeholder", "x");
    FUNC10(op_desc, "dtype", TF_FLOAT);
    FUNC8(op_desc, "shape", input_shape, 4);
    op = FUNC3(op_desc, tf_model->status);
    if (FUNC4(tf_model->status) != TF_OK){
        CLEANUP_ON_ERROR(tf_model);
    }

    op_desc = FUNC6(tf_model->graph, "Const", "transpose_perm");
    FUNC10(op_desc, "dtype", TF_INT32);
    tensor = FUNC2(TF_INT32, transpose_perm_shape, 1, 4 * sizeof(int32_t));
    transpose_perm = (int32_t *)FUNC11(tensor);
    transpose_perm[0] = 1;
    transpose_perm[1] = 2;
    transpose_perm[2] = 3;
    transpose_perm[3] = 0;
    FUNC9(op_desc, "value", tensor, tf_model->status);
    if (FUNC4(tf_model->status) != TF_OK){
        CLEANUP_ON_ERROR(tf_model);
    }
    transpose_op = FUNC3(op_desc, tf_model->status);

    for (layer = 0; layer < conv_network->layers_num; ++layer){
        switch (conv_network->layers[layer].type){
        case DLT_INPUT:
            layer_add_res = DNN_SUCCESS;
            break;
        case DLT_CONV2D:
            layer_add_res = FUNC12(tf_model, transpose_op, &op,
                                           (ConvolutionalParams *)conv_network->layers[layer].params, layer);
            break;
        case DLT_DEPTH_TO_SPACE:
            layer_add_res = FUNC13(tf_model, &op,
                                                     (DepthToSpaceParams *)conv_network->layers[layer].params, layer);
            break;
        case DLT_MIRROR_PAD:
            layer_add_res = FUNC15(tf_model, &op,
                                          (LayerPadParams *)conv_network->layers[layer].params, layer);
            break;
        case DLT_MAXIMUM:
            layer_add_res = FUNC14(tf_model, &op,
                                          (DnnLayerMaximumParams *)conv_network->layers[layer].params, layer);
            break;
        default:
            CLEANUP_ON_ERROR(tf_model);
        }

        if (layer_add_res != DNN_SUCCESS){
            CLEANUP_ON_ERROR(tf_model);
        }
    }

    op_desc = FUNC6(tf_model->graph, "Identity", "y");
    input.oper = op;
    input.index = 0;
    FUNC1(op_desc, input);
    FUNC3(op_desc, tf_model->status);
    if (FUNC4(tf_model->status) != TF_OK){
        CLEANUP_ON_ERROR(tf_model);
    }

    FUNC16(&native_model);

    return DNN_SUCCESS;
}