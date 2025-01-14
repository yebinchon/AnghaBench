
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int const tensor_symbol_info_size; int exec_idx; TYPE_4__* alloc_prep; TYPE_2__* p; TYPE_7__* tensor_blocks; TYPE_1__* tensor_symbol_info; } ;
typedef TYPE_5__ ccv_nnc_symbolic_graph_prep_t ;
struct TYPE_13__ {int* p_refs; } ;
struct TYPE_11__ {int* vt_blocks; int * buffers; TYPE_3__* blocks; } ;
struct TYPE_10__ {int const block_ref; int buffer_ref; } ;
struct TYPE_9__ {int exec_symbol_info; } ;
struct TYPE_8__ {int flags; } ;


 int CCV_NNC_TENSOR_SYMBOL_TAPE_VAR ;
 scalar_t__ READ_ONLY ;
 scalar_t__ TENSOR_EXPECT_UNASSIGNED (TYPE_7__) ;
 scalar_t__ TENSOR_READ_WRITE (int ) ;
 int _ccv_nnc_is_symbolic_graph_exec_input_or_output (int const,int) ;
 int assert (int) ;

__attribute__((used)) static int _ccv_nnc_tensor_block_check_force_broadcast(const ccv_nnc_symbolic_graph_prep_t* const graph_prep, const int block_ref)
{
 assert(block_ref >= 0 && block_ref < graph_prep->tensor_symbol_info_size);

 if (TENSOR_EXPECT_UNASSIGNED(graph_prep->tensor_blocks[block_ref]))
  return 0;

 if (!(graph_prep->tensor_symbol_info[block_ref].flags & CCV_NNC_TENSOR_SYMBOL_TAPE_VAR))
  return 0;
 const int p_ref = graph_prep->tensor_blocks[block_ref].p_refs[0] - 1;

 if (1 != _ccv_nnc_is_symbolic_graph_exec_input_or_output(p_ref, graph_prep->p->exec_symbol_info + (graph_prep->exec_idx - 1)))
  return 0;
 const int vt_ref = graph_prep->alloc_prep->vt_blocks[block_ref];
 assert(vt_ref >= 0);
 assert(block_ref == graph_prep->alloc_prep->blocks[vt_ref].block_ref);
 const int buffer_ref = graph_prep->alloc_prep->blocks[vt_ref].buffer_ref;

 if (TENSOR_READ_WRITE(graph_prep->alloc_prep->buffers[buffer_ref]) == READ_ONLY)
  return 0;

 return 1;
}
