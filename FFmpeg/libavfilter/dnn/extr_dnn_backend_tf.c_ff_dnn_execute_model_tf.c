
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_8__ {int dt; int data; void* channels; void* width; void* height; } ;
struct TYPE_7__ {scalar_t__ model; } ;
struct TYPE_6__ {scalar_t__ nb_output; int ** output_tensors; int status; int outputs; int input_tensor; int input; int session; } ;
typedef TYPE_1__ TFModel ;
typedef int DNNReturnType ;
typedef TYPE_2__ DNNModel ;
typedef TYPE_3__ DNNData ;


 int DNN_ERROR ;
 int DNN_SUCCESS ;
 scalar_t__ FFMIN (scalar_t__,scalar_t__) ;
 int TF_DeleteTensor (int *) ;
 void* TF_Dim (int *,int) ;
 scalar_t__ TF_GetCode (int ) ;
 scalar_t__ TF_OK ;
 int TF_SessionRun (int ,int *,int *,int *,int,int ,int **,scalar_t__,int *,int ,int *,int ) ;
 int TF_TensorData (int *) ;
 int TF_TensorType (int *) ;
 int av_assert0 (int **) ;

DNNReturnType ff_dnn_execute_model_tf(const DNNModel *model, DNNData *outputs, uint32_t nb_output)
{
    TFModel *tf_model = (TFModel *)model->model;
    uint32_t nb = FFMIN(nb_output, tf_model->nb_output);
    if (nb == 0)
        return DNN_ERROR;

    av_assert0(tf_model->output_tensors);
    for (uint32_t i = 0; i < tf_model->nb_output; ++i) {
        if (tf_model->output_tensors[i]) {
            TF_DeleteTensor(tf_model->output_tensors[i]);
            tf_model->output_tensors[i] = ((void*)0);
        }
    }

    TF_SessionRun(tf_model->session, ((void*)0),
                  &tf_model->input, &tf_model->input_tensor, 1,
                  tf_model->outputs, tf_model->output_tensors, nb,
                  ((void*)0), 0, ((void*)0), tf_model->status);

    if (TF_GetCode(tf_model->status) != TF_OK){
        return DNN_ERROR;
    }

    for (uint32_t i = 0; i < nb; ++i) {
        outputs[i].height = TF_Dim(tf_model->output_tensors[i], 1);
        outputs[i].width = TF_Dim(tf_model->output_tensors[i], 2);
        outputs[i].channels = TF_Dim(tf_model->output_tensors[i], 3);
        outputs[i].data = TF_TensorData(tf_model->output_tensors[i]);
        outputs[i].dt = TF_TensorType(tf_model->output_tensors[i]);
    }

    return DNN_SUCCESS;
}
