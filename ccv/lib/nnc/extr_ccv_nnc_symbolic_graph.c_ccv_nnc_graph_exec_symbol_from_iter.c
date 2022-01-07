
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {size_t idx; TYPE_3__* visit; TYPE_1__* graph; } ;
typedef TYPE_4__ ccv_nnc_symbolic_graph_iter_t ;
typedef int ccv_nnc_hint_t ;
struct TYPE_11__ {int flags; char* name; int hint; int cmd; } ;
typedef TYPE_5__ ccv_nnc_graph_exec_symbol_info_t ;
typedef int ccv_nnc_cmd_t ;
struct TYPE_9__ {size_t size; TYPE_2__* node; } ;
struct TYPE_8__ {int index; } ;
struct TYPE_7__ {int exec_symbol_info; } ;


 scalar_t__ ccv_array_get (int ,int ) ;

void ccv_nnc_graph_exec_symbol_from_iter(ccv_nnc_symbolic_graph_iter_t* const iter, ccv_nnc_cmd_t* const cmd, ccv_nnc_hint_t* const hint, int* const flags, char** const name)
{
 if (iter->idx >= iter->visit->size)
  return;
 const ccv_nnc_graph_exec_symbol_info_t* const exec_info = (ccv_nnc_graph_exec_symbol_info_t*)ccv_array_get(iter->graph->exec_symbol_info, iter->visit->node[iter->idx].index);
 if (cmd)
  *cmd = exec_info->cmd;
 if (hint)
  *hint = exec_info->hint;
 if (flags)
  *flags = exec_info->flags;
 if (name)
  *name = exec_info->name;
}
