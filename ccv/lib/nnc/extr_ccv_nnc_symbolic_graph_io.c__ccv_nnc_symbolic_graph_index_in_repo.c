
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int const ccv_nnc_symbolic_graph_t ;
struct TYPE_4__ {int rnum; } ;
typedef TYPE_1__ ccv_array_t ;


 scalar_t__ ccv_array_get (TYPE_1__ const* const,int) ;

__attribute__((used)) static int _ccv_nnc_symbolic_graph_index_in_repo(const ccv_nnc_symbolic_graph_t* const graph, const ccv_array_t* const repo)
{
 if (!graph)
  return -1;
 int i;
 for (i = 0; i < repo->rnum; i++)
  if (*(ccv_nnc_symbolic_graph_t**)ccv_array_get(repo, i) == graph)
   return i;
 return -1;
}
