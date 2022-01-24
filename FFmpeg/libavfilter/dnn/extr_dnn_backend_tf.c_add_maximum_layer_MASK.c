#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {float y; } ;
struct TYPE_11__ {TYPE_1__ val; } ;
struct TYPE_10__ {int /*<<< orphan*/  status; int /*<<< orphan*/  graph; } ;
struct TYPE_9__ {int /*<<< orphan*/ * oper; scalar_t__ index; } ;
typedef  int /*<<< orphan*/  TF_Tensor ;
typedef  TYPE_2__ TF_Output ;
typedef  int /*<<< orphan*/  TF_OperationDescription ;
typedef  int /*<<< orphan*/  TF_Operation ;
typedef  TYPE_3__ TFModel ;
typedef  TYPE_4__ DnnLayerMaximumParams ;
typedef  int /*<<< orphan*/  DNNReturnType ;

/* Variables and functions */
 int /*<<< orphan*/  DNN_ERROR ; 
 int /*<<< orphan*/  DNN_SUCCESS ; 
 int NAME_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TF_FLOAT ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ TF_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int const) ; 

__attribute__((used)) static DNNReturnType FUNC10(TFModel *tf_model, TF_Operation **cur_op,
                                       DnnLayerMaximumParams *params, const int layer)
{
    TF_Operation *op;
    TF_Tensor *tensor;
    TF_OperationDescription *op_desc;
    TF_Output input;
    float *y;

    char name_buffer[NAME_BUFFER_SIZE];
    FUNC9(name_buffer, NAME_BUFFER_SIZE, "maximum/y%d", layer);

    op_desc = FUNC5(tf_model->graph, "Const", name_buffer);
    FUNC7(op_desc, "dtype", TF_FLOAT);
    tensor = FUNC1(TF_FLOAT, NULL, 0, FUNC2(TF_FLOAT));
    y = (float *)FUNC8(tensor);
    *y = params->val.y;
    FUNC6(op_desc, "value", tensor, tf_model->status);
    if (FUNC4(tf_model->status) != TF_OK){
        return DNN_ERROR;
    }
    op = FUNC3(op_desc, tf_model->status);
    if (FUNC4(tf_model->status) != TF_OK){
        return DNN_ERROR;
    }

    FUNC9(name_buffer, NAME_BUFFER_SIZE, "maximum%d", layer);
    op_desc = FUNC5(tf_model->graph, "Maximum", name_buffer);
    input.oper = *cur_op;
    input.index = 0;
    FUNC0(op_desc, input);
    input.oper = op;
    FUNC0(op_desc, input);
    FUNC7(op_desc, "T", TF_FLOAT);
    *cur_op = FUNC3(op_desc, tf_model->status);
    if (FUNC4(tf_model->status) != TF_OK){
        return DNN_ERROR;
    }

    return DNN_SUCCESS;
}