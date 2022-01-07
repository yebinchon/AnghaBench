
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int dim_count; int* dim; scalar_t__* data; } ;
typedef TYPE_1__ ccv_nnc_tape_exec_data_array_t ;


 int ALIGN_16 (int const) ;
 int _ccv_nnc_tape_exec_data_move (scalar_t__* const,scalar_t__* const,int ,scalar_t__ const* const,int const,int*,int const) ;
 int assert (int) ;
 int* ccrealloc (int*,int) ;
 int ccv_max (int const,int) ;

__attribute__((used)) static void _ccv_nnc_tape_exec_data_array_resize(ccv_nnc_tape_exec_data_array_t* const data_array, const uint64_t* const while_counts, const int graph_size)
{
 const int new_dim_count = ccv_max(graph_size, data_array->dim_count);
 int i;
 int size = 1;
 for (i = 0; i < new_dim_count; i++)
 {
  int old_dim = (i < data_array->dim_count) ? data_array->dim[i] : 1;
  int graph_dim = (i < graph_size) ? (int)(while_counts[i] + 1) : 1;
  size *= ccv_max(old_dim, graph_dim);
 }
 data_array->dim = ccrealloc(data_array->dim, sizeof(int) * ALIGN_16(new_dim_count) + sizeof(uint64_t) * size);
 uint64_t* const old_data = (uint64_t*)(data_array->dim + ALIGN_16(data_array->dim_count));
 uint64_t* const new_data = (uint64_t*)(data_array->dim + ALIGN_16(new_dim_count));



 assert(graph_size > 0);
 assert(data_array->dim_count > 0);
 _ccv_nnc_tape_exec_data_move(old_data, new_data, 0, while_counts, graph_size, data_array->dim, data_array->dim_count);
 data_array->data = new_data;

 for (i = 0; i < new_dim_count; i++)
 {
  int old_dim = (i < data_array->dim_count) ? data_array->dim[i] : 1;
  int graph_dim = (i < graph_size) ? (int)(while_counts[i] + 1) : 1;
  data_array->dim[i] = ccv_max(old_dim, graph_dim);
 }
 data_array->dim_count = new_dim_count;
}
