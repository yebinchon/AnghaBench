
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_9__ {int height; int width; int channels; int dt; } ;
struct TYPE_8__ {int graph; } ;
struct TYPE_7__ {scalar_t__ index; int oper; } ;
typedef int TF_Status ;
typedef TYPE_1__ TF_Output ;
typedef TYPE_2__ TFModel ;
typedef int DNNReturnType ;
typedef TYPE_3__ DNNData ;


 int DNN_ERROR ;
 int DNN_SUCCESS ;
 int TF_DeleteStatus (int *) ;
 scalar_t__ TF_GetCode (int *) ;
 int TF_GraphGetTensorShape (int ,TYPE_1__,int*,int,int *) ;
 int TF_GraphOperationByName (int ,char const*) ;
 int * TF_NewStatus () ;
 scalar_t__ TF_OK ;
 int TF_OperationOutputType (TYPE_1__) ;
 int av_assert0 (int) ;

__attribute__((used)) static DNNReturnType get_input_tf(void *model, DNNData *input, const char *input_name)
{
    TFModel *tf_model = (TFModel *)model;
    TF_Status *status;
    int64_t dims[4];

    TF_Output tf_output;
    tf_output.oper = TF_GraphOperationByName(tf_model->graph, input_name);
    if (!tf_output.oper)
        return DNN_ERROR;

    tf_output.index = 0;
    input->dt = TF_OperationOutputType(tf_output);

    status = TF_NewStatus();
    TF_GraphGetTensorShape(tf_model->graph, tf_output, dims, 4, status);
    if (TF_GetCode(status) != TF_OK){
        TF_DeleteStatus(status);
        return DNN_ERROR;
    }
    TF_DeleteStatus(status);


    av_assert0(dims[0] == 1);
    input->height = dims[1];
    input->width = dims[2];
    input->channels = dims[3];

    return DNN_SUCCESS;
}
