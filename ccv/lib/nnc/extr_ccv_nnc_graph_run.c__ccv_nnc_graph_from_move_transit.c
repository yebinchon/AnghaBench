
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int data; } ;
typedef TYPE_2__ ccv_nnc_tensor_t ;
struct TYPE_10__ {int transit; TYPE_1__* from; } ;
typedef TYPE_3__ ccv_nnc_graph_tensor_carry_over_t ;
struct TYPE_11__ {TYPE_5__* carry_overs; } ;
typedef TYPE_4__ ccv_nnc_graph_t ;
struct TYPE_12__ {int rnum; } ;
struct TYPE_8__ {size_t index; scalar_t__* tensors; } ;


 int CCV_IS_TENSOR_MULTIVIEW (TYPE_2__*) ;
 int assert (int) ;
 scalar_t__ ccv_array_get (TYPE_5__*,int) ;

__attribute__((used)) static void _ccv_nnc_graph_from_move_transit(const ccv_nnc_graph_t* const graph)
{
 int i;
 if (graph->carry_overs)
  for (i = 0; i < graph->carry_overs->rnum; i++)
  {
   ccv_nnc_graph_tensor_carry_over_t* const carry_over = (ccv_nnc_graph_tensor_carry_over_t*)ccv_array_get(graph->carry_overs, i);
   ccv_nnc_tensor_t* it = (ccv_nnc_tensor_t*)(carry_over->from->tensors[carry_over->from->index]);
   assert(!CCV_IS_TENSOR_MULTIVIEW(it));
   carry_over->transit = it->data;
  }
}
