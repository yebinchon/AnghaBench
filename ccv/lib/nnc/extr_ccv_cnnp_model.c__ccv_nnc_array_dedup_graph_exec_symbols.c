
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ d; scalar_t__ graph; } ;
typedef TYPE_1__ ccv_nnc_graph_exec_symbol_t ;



__attribute__((used)) static int _ccv_nnc_array_dedup_graph_exec_symbols(ccv_nnc_graph_exec_symbol_t* const graph_exec_symbols, int graph_exec_symbol_size)
{
 int i, j;
 for (i = 0; i < graph_exec_symbol_size; i++)
 {
  ccv_nnc_graph_exec_symbol_t* const graph_exec_symbol = graph_exec_symbols + i;

  for (j = i + 1; j < graph_exec_symbol_size;)
  {
   ccv_nnc_graph_exec_symbol_t* const other_symbol = graph_exec_symbols + j;

   if (other_symbol->d == graph_exec_symbol->d && other_symbol->graph == graph_exec_symbol->graph)
   {
    if (j + 1 < graph_exec_symbol_size)
     *other_symbol = graph_exec_symbols[graph_exec_symbol_size - 1];
    --graph_exec_symbol_size;
    continue;
   }
   ++j;
  }
 }
 return graph_exec_symbol_size;
}
