
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * free_model; int * execute_model; int * load_model; } ;
typedef TYPE_1__ DNNModule ;
typedef int DNNBackendType ;


 int AV_LOG_ERROR ;


 int av_freep (TYPE_1__**) ;
 int av_log (int *,int ,char*) ;
 TYPE_1__* av_malloc (int) ;
 int ff_dnn_execute_model_native ;
 int ff_dnn_execute_model_tf ;
 int ff_dnn_free_model_native ;
 int ff_dnn_free_model_tf ;
 int ff_dnn_load_model_native ;
 int ff_dnn_load_model_tf ;

DNNModule *ff_get_dnn_module(DNNBackendType backend_type)
{
    DNNModule *dnn_module;

    dnn_module = av_malloc(sizeof(DNNModule));
    if(!dnn_module){
        return ((void*)0);
    }

    switch(backend_type){
    case 129:
        dnn_module->load_model = &ff_dnn_load_model_native;
        dnn_module->execute_model = &ff_dnn_execute_model_native;
        dnn_module->free_model = &ff_dnn_free_model_native;
        break;
    case 128:





        av_freep(&dnn_module);
        return ((void*)0);

        break;
    default:
        av_log(((void*)0), AV_LOG_ERROR, "Module backend_type is not native or tensorflow\n");
        av_freep(&dnn_module);
        return ((void*)0);
    }

    return dnn_module;
}
