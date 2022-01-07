
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ccv_nnc_tensor_param_t ;
typedef int ccv_nnc_tensor_arena_t ;
struct TYPE_5__ {struct TYPE_5__* p; int dup_tensor_block_ref; } ;
typedef TYPE_1__ ccv_nnc_symbolic_graph_prep_t ;
typedef int ccv_array_t ;


 int _ccv_nnc_tensor_multiview_down_find_pos (int * const,int const,int const,int const,TYPE_1__ const**,TYPE_1__ const* const,int const,int*,int ,int*) ;
 int assert (int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int _ccv_nnc_tensor_multiview_gen(ccv_array_t* const tensor_metadata, const int preserve, const int assign_update, const ccv_nnc_tensor_param_t params, const ccv_nnc_symbolic_graph_prep_t* const graph_prep, const ccv_nnc_tensor_arena_t* const tensor_arena, const int block_ref)
{

 const ccv_nnc_symbolic_graph_prep_t* prep = graph_prep;
 int i;
 for (i = 1; prep->p; i++)
  prep = prep->p;

 assert(!prep->dup_tensor_block_ref);
 const int c = i;
 const ccv_nnc_symbolic_graph_prep_t* preps[c];
 prep = graph_prep;
 preps[c - 1] = prep;
 for (i = 0; prep->p; i++)
  preps[c - 2 - i] = prep = prep->p;
 int ch[c];
 memset(ch, 0, sizeof(int) * c);
 int pos = 0;
 _ccv_nnc_tensor_multiview_down_find_pos(tensor_metadata, params, preserve, assign_update, preps, graph_prep, block_ref, ch, 0, &pos);
 assert(ch[c - 1] == 0);
 assert(pos > 0);
 return pos;
}
