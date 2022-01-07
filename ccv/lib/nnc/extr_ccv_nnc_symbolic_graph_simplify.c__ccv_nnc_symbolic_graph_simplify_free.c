
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* const output_execs; struct TYPE_4__* const exec_dead; struct TYPE_4__* const exec_symbol_info; struct TYPE_4__* const tensor_symbol_info; int visit; } ;
typedef TYPE_1__ ccv_nnc_symbolic_graph_simplify_t ;


 int ccfree (TYPE_1__* const) ;
 int ccv_nnc_graph_visit_free (int ) ;

__attribute__((used)) static void _ccv_nnc_symbolic_graph_simplify_free(ccv_nnc_symbolic_graph_simplify_t* const simplify)
{
 ccv_nnc_graph_visit_free(simplify->visit);
 ccfree(simplify->tensor_symbol_info);
 ccfree(simplify->exec_symbol_info);
 ccfree(simplify->exec_dead);
 ccfree(simplify->output_execs);
 ccfree(simplify);
}
