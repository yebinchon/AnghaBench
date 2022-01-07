
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tape; } ;
typedef TYPE_1__ ccv_nnc_dynamic_graph_t ;
typedef int FILE ;


 int ccv_nnc_symbolic_graph_dot (int ,int const,int *) ;

void ccv_nnc_dynamic_graph_dot(const ccv_nnc_dynamic_graph_t* const graph, const int flags, FILE* out)
{
 ccv_nnc_symbolic_graph_dot(graph->tape, flags, out);
}
