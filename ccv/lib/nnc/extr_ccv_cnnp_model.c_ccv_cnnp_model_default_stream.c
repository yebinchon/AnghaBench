
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ccv_nnc_stream_context_t ;
struct TYPE_4__ {TYPE_2__* compiled_data; } ;
typedef TYPE_1__ ccv_cnnp_model_t ;
struct TYPE_5__ {int graph; } ;
typedef TYPE_2__ ccv_cnnp_compiled_data_t ;


 int * ccv_nnc_graph_default_stream (int ) ;

ccv_nnc_stream_context_t* ccv_cnnp_model_default_stream(const ccv_cnnp_model_t* const model)
{
 const ccv_cnnp_compiled_data_t* const compiled_data = model->compiled_data;
 if (!compiled_data || !compiled_data->graph)
  return 0;
 return ccv_nnc_graph_default_stream(compiled_data->graph);
}
