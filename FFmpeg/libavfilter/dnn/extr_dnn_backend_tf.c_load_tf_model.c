
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int graph; } ;
typedef int TF_ImportGraphDefOptions ;
typedef int TF_Buffer ;
typedef TYPE_1__ TFModel ;
typedef int DNNReturnType ;


 int DNN_ERROR ;
 int DNN_SUCCESS ;
 int TF_DeleteBuffer (int *) ;
 int TF_DeleteGraph (int ) ;
 int TF_DeleteImportGraphDefOptions (int *) ;
 int TF_DeleteStatus (int ) ;
 scalar_t__ TF_GetCode (int ) ;
 int TF_GraphImportGraphDef (int ,int *,int *,int ) ;
 int TF_NewGraph () ;
 int * TF_NewImportGraphDefOptions () ;
 int TF_NewStatus () ;
 scalar_t__ TF_OK ;
 int * read_graph (char const*) ;

__attribute__((used)) static DNNReturnType load_tf_model(TFModel *tf_model, const char *model_filename)
{
    TF_Buffer *graph_def;
    TF_ImportGraphDefOptions *graph_opts;

    graph_def = read_graph(model_filename);
    if (!graph_def){
        return DNN_ERROR;
    }
    tf_model->graph = TF_NewGraph();
    tf_model->status = TF_NewStatus();
    graph_opts = TF_NewImportGraphDefOptions();
    TF_GraphImportGraphDef(tf_model->graph, graph_def, graph_opts, tf_model->status);
    TF_DeleteImportGraphDefOptions(graph_opts);
    TF_DeleteBuffer(graph_def);
    if (TF_GetCode(tf_model->status) != TF_OK){
        TF_DeleteGraph(tf_model->graph);
        TF_DeleteStatus(tf_model->status);
        return DNN_ERROR;
    }

    return DNN_SUCCESS;
}
