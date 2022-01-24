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
struct TYPE_9__ {int /*<<< orphan*/  block_size; } ;
struct TYPE_8__ {int /*<<< orphan*/  status; int /*<<< orphan*/  graph; } ;
struct TYPE_7__ {scalar_t__ index; int /*<<< orphan*/ * oper; } ;
typedef  TYPE_1__ TF_Output ;
typedef  int /*<<< orphan*/  TF_OperationDescription ;
typedef  int /*<<< orphan*/  TF_Operation ;
typedef  TYPE_2__ TFModel ;
typedef  TYPE_3__ DepthToSpaceParams ;
typedef  int /*<<< orphan*/  DNNReturnType ;

/* Variables and functions */
 int /*<<< orphan*/  DNN_ERROR ; 
 int /*<<< orphan*/  DNN_SUCCESS ; 
 int NAME_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__) ; 
 int /*<<< orphan*/  TF_FLOAT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ TF_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int const) ; 

__attribute__((used)) static DNNReturnType FUNC7(TFModel *tf_model, TF_Operation **cur_op,
                                              DepthToSpaceParams *params, const int layer)
{
    TF_OperationDescription *op_desc;
    TF_Output input;
    char name_buffer[NAME_BUFFER_SIZE];

    FUNC6(name_buffer, NAME_BUFFER_SIZE, "depth_to_space%d", layer);
    op_desc = FUNC3(tf_model->graph, "DepthToSpace", name_buffer);
    input.oper = *cur_op;
    input.index = 0;
    FUNC0(op_desc, input);
    FUNC5(op_desc, "T", TF_FLOAT);
    FUNC4(op_desc, "block_size", params->block_size);
    *cur_op = FUNC1(op_desc, tf_model->status);
    if (FUNC2(tf_model->status) != TF_OK){
        return DNN_ERROR;
    }

    return DNN_SUCCESS;
}