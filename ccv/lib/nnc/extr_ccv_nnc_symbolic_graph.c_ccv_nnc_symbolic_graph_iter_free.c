
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* const symbol_cache; int visit; } ;
typedef TYPE_1__ ccv_nnc_symbolic_graph_iter_t ;


 int ccfree (TYPE_1__* const) ;
 int ccv_nnc_graph_visit_free (int ) ;

void ccv_nnc_symbolic_graph_iter_free(ccv_nnc_symbolic_graph_iter_t* const iter)
{
 ccv_nnc_graph_visit_free(iter->visit);
 if (iter->symbol_cache)
  ccfree(iter->symbol_cache);
 ccfree(iter);
}
