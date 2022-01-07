
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int block_size; } ;
struct TYPE_8__ {int status; int graph; } ;
struct TYPE_7__ {scalar_t__ index; int * oper; } ;
typedef TYPE_1__ TF_Output ;
typedef int TF_OperationDescription ;
typedef int TF_Operation ;
typedef TYPE_2__ TFModel ;
typedef TYPE_3__ DepthToSpaceParams ;
typedef int DNNReturnType ;


 int DNN_ERROR ;
 int DNN_SUCCESS ;
 int NAME_BUFFER_SIZE ;
 int TF_AddInput (int *,TYPE_1__) ;
 int TF_FLOAT ;
 int * TF_FinishOperation (int *,int ) ;
 scalar_t__ TF_GetCode (int ) ;
 int * TF_NewOperation (int ,char*,char*) ;
 scalar_t__ TF_OK ;
 int TF_SetAttrInt (int *,char*,int ) ;
 int TF_SetAttrType (int *,char*,int ) ;
 int snprintf (char*,int,char*,int const) ;

__attribute__((used)) static DNNReturnType add_depth_to_space_layer(TFModel *tf_model, TF_Operation **cur_op,
                                              DepthToSpaceParams *params, const int layer)
{
    TF_OperationDescription *op_desc;
    TF_Output input;
    char name_buffer[NAME_BUFFER_SIZE];

    snprintf(name_buffer, NAME_BUFFER_SIZE, "depth_to_space%d", layer);
    op_desc = TF_NewOperation(tf_model->graph, "DepthToSpace", name_buffer);
    input.oper = *cur_op;
    input.index = 0;
    TF_AddInput(op_desc, input);
    TF_SetAttrType(op_desc, "T", TF_FLOAT);
    TF_SetAttrInt(op_desc, "block_size", params->block_size);
    *cur_op = TF_FinishOperation(op_desc, tf_model->status);
    if (TF_GetCode(tf_model->status) != TF_OK){
        return DNN_ERROR;
    }

    return DNN_SUCCESS;
}
