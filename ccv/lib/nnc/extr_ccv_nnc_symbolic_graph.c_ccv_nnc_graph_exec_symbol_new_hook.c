
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* context; int func; } ;
struct TYPE_6__ {TYPE_1__ graph_exec_symbol_new; } ;
struct TYPE_7__ {TYPE_2__ hooks; } ;
typedef TYPE_3__ ccv_nnc_symbolic_graph_t ;
typedef int ccv_nnc_graph_exec_symbol_new_hook_f ;



void* ccv_nnc_graph_exec_symbol_new_hook(ccv_nnc_symbolic_graph_t* const graph, ccv_nnc_graph_exec_symbol_new_hook_f hook, void* context)
{
 void* const prev = graph->hooks.graph_exec_symbol_new.context;
 graph->hooks.graph_exec_symbol_new.func = hook;
 graph->hooks.graph_exec_symbol_new.context = context;
 return prev;
}
