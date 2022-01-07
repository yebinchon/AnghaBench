
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int device_id; } ;
typedef TYPE_1__ ccv_nnc_stream_data_t ;
struct TYPE_8__ {int output_size; int outputs; int input_size; int inputs; } ;
typedef TYPE_2__ ccv_nnc_graph_exec_info_t ;
struct TYPE_9__ {scalar_t__ rnum; } ;
typedef TYPE_3__ ccv_array_t ;


 scalar_t__ ccv_array_get (TYPE_3__* const,int ) ;
 int ccv_nnc_device_ids_for_io (int ,int ,int ,int ,int* const,int const) ;

__attribute__((used)) static int _ccv_nnc_device_ids_for_stream_data(ccv_nnc_graph_exec_info_t* const node, const int device_id, ccv_array_t* const stream_data, int* const device_ids, const int max_device_id_size)
{
 int device_id_size = ccv_nnc_device_ids_for_io(node->inputs, node->input_size, node->outputs, node->output_size, device_ids, max_device_id_size);
 if (device_id_size == 0)
 {

  if (stream_data->rnum > 0)
  {
   ccv_nnc_stream_data_t* const default_data = (ccv_nnc_stream_data_t*)ccv_array_get(stream_data, 0);
   device_ids[0] = default_data->device_id;
  } else
   device_ids[0] = device_id >= 0 ? device_id : 0;
  device_id_size = 1;
 }
 return device_id_size;
}
