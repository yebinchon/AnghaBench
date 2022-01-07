
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * get_input; int * set_input_output; void* model; } ;
typedef TYPE_1__ TFModel ;
typedef TYPE_1__ DNNModel ;


 scalar_t__ DNN_SUCCESS ;
 int av_freep (TYPE_1__**) ;
 TYPE_1__* av_malloc (int) ;
 TYPE_1__* av_mallocz (int) ;
 int get_input_tf ;
 scalar_t__ load_native_model (TYPE_1__*,char const*) ;
 scalar_t__ load_tf_model (TYPE_1__*,char const*) ;
 int set_input_output_tf ;

DNNModel *ff_dnn_load_model_tf(const char *model_filename)
{
    DNNModel *model = ((void*)0);
    TFModel *tf_model = ((void*)0);

    model = av_malloc(sizeof(DNNModel));
    if (!model){
        return ((void*)0);
    }

    tf_model = av_mallocz(sizeof(TFModel));
    if (!tf_model){
        av_freep(&model);
        return ((void*)0);
    }

    if (load_tf_model(tf_model, model_filename) != DNN_SUCCESS){
        if (load_native_model(tf_model, model_filename) != DNN_SUCCESS){
            av_freep(&tf_model);
            av_freep(&model);

            return ((void*)0);
        }
    }

    model->model = (void *)tf_model;
    model->set_input_output = &set_input_output_tf;
    model->get_input = &get_input_tf;

    return model;
}
