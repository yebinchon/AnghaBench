#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_9__ {int /*<<< orphan*/ ** paddings; } ;
struct TYPE_8__ {int /*<<< orphan*/  status; int /*<<< orphan*/  graph; } ;
struct TYPE_7__ {int /*<<< orphan*/ * oper; scalar_t__ index; } ;
typedef  int /*<<< orphan*/  TF_Tensor ;
typedef  TYPE_1__ TF_Output ;
typedef  int /*<<< orphan*/  TF_OperationDescription ;
typedef  int /*<<< orphan*/  TF_Operation ;
typedef  TYPE_2__ TFModel ;
typedef  TYPE_3__ LayerPadParams ;
typedef  int /*<<< orphan*/  DNNReturnType ;

/* Variables and functions */
 int /*<<< orphan*/  DNN_ERROR ; 
 int /*<<< orphan*/  DNN_SUCCESS ; 
 int NAME_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  TF_FLOAT ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TF_INT32 ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ TF_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int const) ; 

__attribute__((used)) static DNNReturnType FUNC10(TFModel *tf_model, TF_Operation **cur_op,
                                              LayerPadParams *params, const int layer)
{
    TF_Operation *op;
    TF_Tensor *tensor;
    TF_OperationDescription *op_desc;
    TF_Output input;
    int32_t *pads;
    int64_t pads_shape[] = {4, 2};

    char name_buffer[NAME_BUFFER_SIZE];
    FUNC9(name_buffer, NAME_BUFFER_SIZE, "pad%d", layer);

    op_desc = FUNC4(tf_model->graph, "Const", name_buffer);
    FUNC7(op_desc, "dtype", TF_INT32);
    tensor = FUNC1(TF_INT32, pads_shape, 2, 4 * 2 * sizeof(int32_t));
    pads = (int32_t *)FUNC8(tensor);
    pads[0] = params->paddings[0][0];
    pads[1] = params->paddings[0][1];
    pads[2] = params->paddings[1][0];
    pads[3] = params->paddings[1][1];
    pads[4] = params->paddings[2][0];
    pads[5] = params->paddings[2][1];
    pads[6] = params->paddings[3][0];
    pads[7] = params->paddings[3][1];
    FUNC6(op_desc, "value", tensor, tf_model->status);
    if (FUNC3(tf_model->status) != TF_OK){
        return DNN_ERROR;
    }
    op = FUNC2(op_desc, tf_model->status);
    if (FUNC3(tf_model->status) != TF_OK){
        return DNN_ERROR;
    }

    op_desc = FUNC4(tf_model->graph, "MirrorPad", "mirror_pad");
    input.oper = *cur_op;
    input.index = 0;
    FUNC0(op_desc, input);
    input.oper = op;
    FUNC0(op_desc, input);
    FUNC7(op_desc, "T", TF_FLOAT);
    FUNC7(op_desc, "Tpaddings", TF_INT32);
    FUNC5(op_desc, "mode", "SYMMETRIC", 9);
    *cur_op = FUNC2(op_desc, tf_model->status);
    if (FUNC3(tf_model->status) != TF_OK){
        return DNN_ERROR;
    }

    return DNN_SUCCESS;
}